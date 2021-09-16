#ifndef READ_H
#define READ_H

#include <fcntl.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/io/zero_copy_stream_impl.h>
#include <google/protobuf/text_format.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <string>
#include "../ad/advertising.h"
#include "../pb/ad.pb.h"
#include "../pb/user.pb.h"
#include "../user/user.h"

vector<Adv> ListAds(const AdList& ads);

vector<UserInfo> ListUsers(UserList users);

#endif