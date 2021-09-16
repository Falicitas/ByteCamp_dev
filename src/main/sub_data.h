#ifndef SUBDATA_H
#define SUBDATA_H

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

void sub_ad(vector<Adv>& advs, const char* path);

void sub_user(vector<UserInfo> userInfos, const char* path);

#endif