#ifndef KTH_AD_H
#define KTH_AD_H

#include <bits/stdc++.h>
#include "../ad/advertising.h"
#include "../user/user.h"
#include "roaring/roaring.hh"
typedef unsigned long long ull;
struct Kth_Ad {
    int K_size;
    Kth_Ad();
    static constexpr int Threshold = 200;
    int pos_id = 0;
    std::set<ull> CNF_id;
    std::map<std::string, std::set<std::pair<ull, bool>>> attr_to_CNF;
    std::map<ull, Adv> Ads;
    std::map<ull, int> Ad_to_pos;
    std::map<int, ull> pos_to_Ad;
    std::map<std::string, map<string, roaring::Roaring>> forw_attr,
        rev_attr;  // key = p.field_name + ":" + p.val
    std::map<string, roaring::Roaring> noLit_attr;  // key = p.field_name
    std::set<string> all_attr;
    void Set_K(int);
    int size();
    void insert_Ad(const Adv&);
    std::set<ull> Return_CNF(UserInfo);
    void Bitmap_init();
    std::set<ull> Bitmap_Index(UserInfo);
    //std::set<ull> Boolean_Index(UserInfo);
};

#endif