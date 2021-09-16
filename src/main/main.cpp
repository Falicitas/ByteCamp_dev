#include "../index/Main.h"
#include "../ad/advertising.h"
#include "../index/Kth_Ad.h"
#include "../pb/ad.pb.h"
#include "../pb/user.pb.h"
#include "../user/user.h"
#include "read_data.h"
#include "sub_data.h"

Main main_test;

int main(int argc, char** argv) {
    cerr << "--------------------------------------\n";
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " ADDRESS_BOOL_FILE" << std::endl;
        return -1;
    }
    // 解析广告数据
    AdList ads;

    fstream input(argv[1], ios::in | ios::binary);
    if (!ads.ParseFromIstream(&input)) {
        cerr << "Filed to parse ad." << endl;
        return -1;
    }
    input.close();

    vector<Adv> advs = ListAds(ads);
    for (int i = 0; i < advs.size(); i++) {
        std::cout << "aid: " << advs[i].get_id() << "\n";
        vector<Predicate> temp_preds = advs[i].get_preds();
        for (int j = 0; j < temp_preds.size(); j++) {
            std::cout << "field_name: " << temp_preds[j].get_field_name()
                      << '\n';
            std::cout << "reverse: " << temp_preds[j].get_reverse() << '\n';
            vector<string> temp_value = temp_preds[j].get_values();
            for (int k = 0; k < temp_value.size(); k++) {
                std::cout << "value: " << temp_value[k] << '\n';
            }
        }
    }

    // 解析用户数据
    UserList users;
    
    fstream input1(argv[2], ios::in | ios::binary);
    if (!users.ParseFromIstream(&input1)) {
        cerr << "Filed to parse user." << endl;
        return -1;
    }
    input1.close();
    vector<UserInfo> userInfos = ListUsers(users);
    cerr << "----------------------------\n";
    // for (i

    // sub_ad(advs, argv[3]);
    // sub_user(userInfos, argv[4]);

    google::protobuf::ShutdownProtobufLibrary();
    // vector<Adv> ads = advs;
    // vector<UserInfo> userInfos = userInfos;

    main_test.Init(advs);
    for (auto user : userInfos) {
        main_test.find_ad(user);
    }
    return 0;
}