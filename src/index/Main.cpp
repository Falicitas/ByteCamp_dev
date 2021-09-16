#ifndef Main_hpp
#define Main_hpp
#include "Main.h"
#include "../ad/advertising.h"
#include "Kth_Ad.h"

void Main::find_ad(UserInfo user) {
    cout << "------------------------------------------------------------------"
            "-----\n";
    cout << "用户" << user.get_user_id() << "\n";
    int M = user.get_features().size();
    set<ull> ans;
    for (int k = (M >= MAX_K ? MAX_K : M); k >= 0; k--) {  //不能min(M,MAX_K)
        set<ull> s = Buc[k].Return_CNF(user);
        for (auto x : s) {
            ans.insert(x);
        }
    }
    for (auto x : ans) {
        cout << "广告：" << x << "\n";
    }
    cout << "------------------------------------------------------------------"
            "-----\n";
}
void Main::Init(std::vector<Adv> advs) {  //离线操作
    Buc.resize(MAX_K + 1);
    for (int i = 0; i <= MAX_K; i++) {
        Buc[i].Set_K(i);
    }
    init_Ad(advs);
    for (int i = 0; i <= MAX_K; i++) {
        Buc[i].Bitmap_init();
    }
}
void Main::init_Ad(std::vector<Adv> advs) {
    sort(advs.begin(), advs.end(), [&](const Adv& lhs, const Adv& rhs) {
        return lhs.get_id() < rhs.get_id();
    });
    int cnt = 0;
    for (auto ad : advs) {
        cnt++;
        if (cnt % 100 == 0) {
            cerr << "!!!!!!!!!!!!!!!!!!\n";
        }
        int IN_Judge = 1, No_Rev_cnt = 0;
        auto preds = ad.get_preds();
        for (auto p : preds) {
            if (p.get_op() == "IN") {
                No_Rev_cnt += (1 ^ p.get_reverse());  //正定向为0，计数1
            } else {
                IN_Judge = 0;
            }
        }
        if (IN_Judge) {
            Buc[No_Rev_cnt].insert_Ad(ad);
        }
    }
}

#endif
