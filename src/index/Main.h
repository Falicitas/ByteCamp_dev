#include "../index/Kth_Ad.h"
#include "../user/user.h"
struct Main {
    static const int MAX_K = 5000;
    vector<Kth_Ad> Buc;

   public:
    void find_ad(UserInfo user);
    void Init(std::vector<Adv> advs);
    void init_Ad(std::vector<Adv> advs);
};
