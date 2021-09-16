#include "read_data.h"

// 读取广告数据，并将广告数据封装成对象
vector<Adv> ListAds(const AdList& ads) {
    vector<Adv> advs;
    for (int i = 0; i < ads.ad_size(); i++) {
        const Ad& ad = ads.ad(i);
        unsigned long long id = ad.aid();
        string op;
        string field_name;
        bool reverse;
        vector<Predicate> preds;
        for (int j = 0; j < ad.target_item_size(); j++) {
            field_name = ad.target_item(j).field_name();
            vector<string> values;
            for (int k = 0; k < ad.target_item(j).value_size(); k++) {
                values.push_back(to_string(ad.target_item(j).value(k)));
            }
            reverse = ad.target_item(j).reverse();
            switch (ad.target_item(j).op()) {
                case AdTargetOperator::IN:
                    op = "IN";
                    break;
                case AdTargetOperator::GT:
                    op = "GT";
                    break;
                case AdTargetOperator::LT:
                    op = "LT";
                    break;
                case AdTargetOperator::BETWEEN:
                    op = "BETWEEN";
                    break;
                case AdTargetOperator::DistanceLT:
                    op = "DistanceLT";
                    break;
                case AdTargetOperator::GTE:
                    op = "GTE";
                    break;
                case AdTargetOperator::LTE:
                    op = "LTE";
            }
            preds.push_back(Predicate(op, reverse, field_name, values));
        }
        advs.push_back(Adv(id, preds));
    }
    return advs;
}

// 读取用户数据，并将用户数据封装为对象
vector<UserInfo> ListUsers(UserList users) {
    vector<UserInfo> userInfos;
    for (int i = 0; i < users.user_size(); i++) {
        User user = users.user(i);
        string id = user.user_id();
        vector<Feature> features;
        for (int j = 0; j < user.feture_item_size(); j++) {
            FeatureItem item = user.feture_item(j);
            string field_name = item.field_name();
            unsigned long long value;
            if (item.value_size() != 0) {
                value = item.value(0);
                features.push_back(Feature(field_name, to_string(value)));
            }
        }
        userInfos.push_back(UserInfo(id, features));
    }
    return userInfos;
}
