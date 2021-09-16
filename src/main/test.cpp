#include <bits/stdc++.h>
#include <fstream>
#include <iostream>
#include "../ad/advertising.h"
#include "../index/Kth_Ad.h"
#include "../index/Main.h"
#include "../user/user.h"
#include "roaring/roaring.hh"
using namespace std;

vector<Adv> get_Ad() {
    ifstream input("Ad_in.txt", ios::in);
    int n;
    vector<Adv> ads;
    string buff;
    input >> n;
    for (int i = 0; i < n; i++) {
        Adv ad;
        int id;
        input >> id;
        // cout << id << "\n";
        ad.set_id(id);
        int p_n;
        input >> p_n;
        getline(input, buff);
        vector<Predicate> preds;
        for (int j = 0; j < p_n; j++) {
            Predicate p;
            string s;
            getline(input, s);
            stringstream ss(s);
            int field_name = 0, bel = 0, rev = 0;
            vector<string> values;
            while (ss >> s) {
                if (!field_name) {
                    field_name = 1;
                    p.set_field_name(s);
                } else if (!bel) {
                    bel = 1;
                    p.set_op(s);
                } else if (!rev) {
                    rev = 1;
                    p.set_reverse(stoi(s));
                } else {
                    values.push_back(s);
                }
            }
            p.set_value(values);
            preds.push_back(p);
        }
        ad.set_preds(preds);
        ads.push_back(ad);
    }
    for (auto ad : ads) {
        // cout << ad.get_id() << "\n";
        auto preds = ad.get_preds();
        for (auto p : preds) {
            // cout << (!p.get_reverse() ? "IN" : "NOTIN") << " ";
            auto values = p.get_values();

            for (auto val : values) {
                // cout << val << " ";
            }
            // cout << "\n";
        }
    }
    input.close();
    return ads;
}

vector<UserInfo> get_user() {
    ifstream input("User_in.txt", ios::in);

    vector<UserInfo> users;
    int n;
    input >> n;
    for (int i = 0; i < n; i++) {
        UserInfo user;
        string user_id;
        vector<Feature> fs;
        input >> user_id;
        user.set_user_id(user_id);
        int feat_cnt;
        input >> feat_cnt;

        for (int j = 0; j < feat_cnt; j++) {
            Feature f;
            string field_name, op, val;
            input >> field_name >> op >> val;
            f.set_field_name(field_name);
            f.set_value(val);
            fs.push_back(f);
        }
        user.set_feature(fs);
        users.push_back(user);
    }
    for (auto user : users) {
        // cout << user.get_user_id() << "\n";
        auto fs = user.get_features();
        for (auto f : fs) {
            // cout << f.get_field_name() << " = " << f.get_value() << "\n";
        }
    }
    input.close();
    return users;
}

Main main_test;

int main() {
    vector<Adv> ads = get_Ad();
    vector<UserInfo> userInfos = get_user();
    main_test.Init(ads);
    /*
    for (auto x : main_test.Buc[2].CNF_id) {
        cout << x << "\n";
    }
    //  cout << ;
    for (auto x : main_test.Buc[2].Ad_to_pos) {
        cout << x.first << ",pos:" << x.second << "\n";
    }
    cout << "----------------rev\n";
    for (auto field_val_Roaring : main_test.Buc[2].rev_attr) {
        cout << field_val_Roaring.first << ":";
        for (auto val_Roaring : field_val_Roaring.second) {
            cout << val_Roaring.first << " ";
            for (int i = 0; i < 4; i++) {
                cout << val_Roaring.second.contains(i);
            }
            cout << "\n";
        }
        cout << "\n";
    }
    cout << "----------------forw\n";
    for (auto field_val_Roaring : main_test.Buc[2].forw_attr) {
        cout << field_val_Roaring.first << ":";
        for (auto val_Roaring : field_val_Roaring.second) {
            cout << val_Roaring.first << ",";
            for (int i = 0; i < 4; i++) {
                cout << val_Roaring.second.contains(i);
            }
            cout << "\n";
        }
        cout << "\n";
    }
    cout << "---------------UnLit\n";
    for (auto attr_Roaring : main_test.Buc[2].noLit_attr) {
        cout << attr_Roaring.first << ",";
        for (int i = 0; i < 4; i++) {
            cout << attr_Roaring.second.contains(i);
        }
        cout << "\n";
    }
    */
    for (auto user : userInfos) {
        main_test.find_ad(user);
    }
    return 0;
}