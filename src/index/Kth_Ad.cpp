#include "Kth_Ad.h"
using namespace std;

Kth_Ad::Kth_Ad() {}

void Kth_Ad::Set_K(int K) {
    K_size = K;
}

int Kth_Ad::size() {
    return K_size;
}

void Kth_Ad::insert_Ad(const Adv& ad) {
    ull id = ad.get_id();
    CNF_id.insert(id);
    Ads[id] = ad;
    vector<Predicate> preds = ad.get_preds();
    for (auto p : preds) {
        auto values = p.get_values();
        for (auto val : values) {
            string attr = p.get_field_name() + ":" + val;
            attr_to_CNF[attr].insert({id, p.get_reverse()});
        }
    }
}

/*
    需要去考虑：
    2e4条广告在一个桶里；
    该桶的30条谓词拉链长度均为O(2e4)；
    对于50个谓词的用户画像，
    查询复杂度\sum_{i=0}^{50}min(i,50-i)*2e4


    K 桶大小,M 用户画像谓词个数
    当 abs(K - M) >= 20，用Bitmap
    否则用布尔
    因为Bitmap复杂度稳定
    */
std::set<ull> Kth_Ad::Return_CNF(UserInfo user_attribute) {
    auto fs = user_attribute.get_features();
    /*
    sort(fs.begin(), fs.end(), [&](const std::string& a, const std::string& b) {
        return attr_to_CNF[a].size() < attr_to_CNF[b].size();
    });
    */

    if (K_size < Threshold) {
        return Bitmap_Index(user_attribute);
    } else {
        // return Boolean_Index(user_attribute);
    }
}

std::set<ull> Kth_Ad::Boolean_Index(UserInfo user_attribute) {
    std::map<ull, int> Remained;  //初始默认当前的CNF都合法
    std::set<ull> ans_CNF;
    auto key_value = user_attribute.get_features();
    for (auto id : CNF_id) {
        Remained.insert({id, 0});  // cnt = 0;
    }

    int user_thershold = (key_value.size() / 2) +
                         1;  //调参1，均衡遍历拉链的总和和遍历Remained的总和
    for (int i = 0; i < key_value.size(); i++) {
        if (attr_to_CNF.count(key_value[i].get_field_name()) &&
            Remained.size() / user_thershold >
                attr_to_CNF[key_value[i]]
                    .size()) {  //拉链长度明显小于 Remained，遍历拉链长度
            for (auto attr : attr_to_CNF[user_attribute[i]]) {
                if (attr.second == 0) {
                    if (Remained.count(attr.first)) {
                        Remained[attr.first]++;
                    }
                } else {
                    Remained.erase(attr.first);
                    ans_CNF.erase(attr.first);
                }
            }
        } else if (attr_to_CNF.count(user_attribute[i])) {
            /*
            以下使用鸽巢定理优化：
            假设剩余的用户画像都匹配上了Remained中一条广告的正定向谓词，
            加上目前已匹配的，都不达到广告正定向谓词的个数K_size，
            则直接抛弃
            */
            for (auto it = Remained.begin(); it != Remained.end();) {
                int left = (int)user_attribute.size() - i;
                if (left + (*it).second < K_size) {
                    it = Remained.erase(it);
                } else if ((*it).second >= K_size) {
                    ans_CNF.insert((*it).first);
                    it = Remained.erase(it);
                } else {
                    it++;
                }
            }

            for (auto it = Remained.begin(); it != Remained.end();) {
                auto id = (*it).first;
                if (attr_to_CNF[user_attribute[i]].count({id, 0})) {
                    (*it).second++;  //该广告被正定向匹配的次数
                    it++;
                } else if (attr_to_CNF[user_attribute[i]].count({id, 1})) {
                    /*
                    //ans_CNF.erase(id);
                    Remained能遍历到的，不会在ans中
                    */
                    it = Remained.erase(it);
                } else {
                    it++;
                }
            }
            for (auto it = ans_CNF.begin(); it != ans_CNF.end();) {
                auto id = *it;
                if (attr_to_CNF[user_attribute[i]].count({id, 1})) {
                    it = ans_CNF.erase(it);
                }
            }
        }
    }
    for (auto ad : Remained) {
        if (ad.second >= K_size) {  //此时在里面的是合法的广告
            ans_CNF.insert(ad.first);
        }
    }
    return ans_CNF;
}

void Kth_Ad::Bitmap_init() {
    pos_id = 0;
    for (auto& ad : Ads) {  //<Ad_id,Ad>
        auto preds = ad.second.get_preds();
        ull Ad_id = ad.first;
        Ad_to_pos[Ad_id] = pos_id;
        pos_to_Ad[pos_id] = Ad_id;
        for (auto& p : preds) {
            auto values = p.get_values();
            all_attr.insert(p.get_field_name());
            if (p.get_reverse() == 0) {  //正向
                for (auto& val : values) {
                    forw_attr[p.get_field_name()][val].add(pos_id);
                }
                noLit_attr[p.get_field_name()].add(pos_id);  //用于反向
            } else {                                         //反向
                for (auto& val : values) {
                    rev_attr[p.get_field_name()][val].add(pos_id);
                }
            }
        }
        pos_id++;
    }
    for (auto& field_name : all_attr) {
        noLit_attr[field_name].flip(0, pos_id);
        // cout << ">>>>>" << pos_id << "\n";
    }
    for (auto& field_val_Roaring : rev_attr) {
        for (auto& val_Roaring : field_val_Roaring.second) {
            val_Roaring.second.flip(0, pos_id);
            /*将所有<predicate,value>的rev_attr反转后，
            位为1的
            直接&运算
            */
        }
    }
}
/*
----------------rev
state:CA 1101

----------------forw
age:3,1110

gender:F,0100
M,0011

state:CA,0001
NY,1000

---------------UnLit
age,0001
gender,1000
state,0110

age:3
state:CA
gender:M
attr:age
attr:gender
attr:state
*/
std::set<ull> Kth_Ad::Bitmap_Index(UserInfo user_attribute) {
    std::map<string, string> field_p;
    auto fs = user_attribute.get_features();
    // cout << "---------------------------user\n";
    for (auto p : fs) {
        // cout << p.get_field_name() << ":" << p.get_value() << "\n";
        field_p[p.get_field_name()] = p.get_value();
    }
    roaring::Roaring ad, buf, ads;
    buf.addRange(0, pos_id);
    buf.flip(0, pos_id);
    ads.addRange(0, pos_id);
    for (auto field_name : all_attr) {
        // cout << "attr:" << field_name;
        ad &= buf;
        ad |= noLit_attr[field_name];
        if (field_p.count(field_name)) {
            ad |= forw_attr[field_name][field_p[field_name]];
            if (rev_attr[field_name].count(field_p[field_name]))
                ad &= rev_attr[field_name][field_p[field_name]];
            // for (int i = 0; i < 4; i++) {
            //    cout << ad.contains(i);
            //}
            // cout << "\n";
        }
        ads &= ad;
    }
    set<ull> ans;
    for (int i = 0; i < pos_id; i++) {
        if (ads.contains(i)) {
            ans.insert(pos_to_Ad[i]);
        }
    }
    // for (auto x : ans) {
    //    cout << "#" << x << "\n";
    //}
    return ans;
}
