#include "sub_data.h"

void sub_ad(vector<Adv>& advs, const char* path) {
    // 处理一个小广告的数据集，方便调试
    AdList adlist;
    for (int i = 0; i < 100; i++) {
        Ad* ad = adlist.add_ad();
        ad->set_aid(advs[i].get_id());
        vector<Predicate> temp_preds = advs[i].get_preds();
        for (int j = 0; j < temp_preds.size(); j++) {
            AdTargetItem* item = ad->add_target_item();
            item->set_field_name(temp_preds[j].get_field_name());
            item->set_reverse(temp_preds[j].get_reverse());
            string temp_op = temp_preds[j].get_op();
            if (temp_op == "IN") {
                item->set_op(AdTargetOperator::IN);
            } else if (temp_op == "BETWEEN") {
                item->set_op(AdTargetOperator::BETWEEN);
            } else if (temp_op == "GT") {
                item->set_op(AdTargetOperator::GT);
            } else if (temp_op == "LT") {
                item->set_op(AdTargetOperator::LT);
            } else if (temp_op == "GTE") {
                item->set_op(AdTargetOperator::GTE);
            } else if (temp_op == "LTE") {
                item->set_op(AdTargetOperator::LTE);
            } else if (temp_op == "DistanceLT") {
                item->set_op(AdTargetOperator::DistanceLT);
            }
            vector<string> temp_value = temp_preds[j].get_values();
            for (int k = 0; k < temp_value.size(); k++) {
                item->add_value(stoul(temp_value[k]));
            }
        }
    }
    fstream output(path, ios::out | ios::trunc | ios::binary);
    if (!adlist.SerializeToOstream(&output)) {
        cerr << "Failed to write ad." << endl;
        exit(1);
    }
    output.close();
}

void sub_user(vector<UserInfo> userInfos, const char* path) {
    // 处理一个小的用户数据集
    UserList userList;
    for (int i = 0; i < 10; i++) {
        User* user = userList.add_user();
        user->set_user_id(userInfos[i].get_user_id());
        FeatureItem* item = user->add_feture_item();
        vector<Feature> temp_feature = userInfos[i].get_features();
        for (int j = 0; j < temp_feature.size(); j++) {
            item->set_field_name(temp_feature[j].get_field_name());
            string temp_value = temp_feature[j].get_value();
            item->add_value(stoul(temp_value));
        }
    }
    fstream output1(path, ios::out | ios::trunc | ios::binary);
    if (!userList.SerializeToOstream(&output1)) {
        cerr << "Failed to write user." << endl;
        exit(1);
    }
    output1.close();
}