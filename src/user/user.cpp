#include "user.h"
void Feature::set_field_name(std::string field_name) {
    field_name_ = field_name;
}

void Feature::set_value(std::string values) {
    value_ = values;
}

const std::string Feature::get_field_name() const {
    return field_name_;
}

const std::string Feature::get_value() const {
    return value_;
}

void UserInfo::set_user_id(std::string user_id) {
    user_id_ = user_id;
}
void UserInfo::set_feature(std::vector<Feature>& features) {
    features_ = features;
}
void UserInfo::insert_feature(class Feature feature) {
    features_.push_back(feature);
}
const std::string UserInfo::get_user_id() const {
    return user_id_;
}
const std::vector<Feature> UserInfo::get_features() const {
    return features_;
}
