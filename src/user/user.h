#ifndef USER_HPP
#define USER_HPP

#include <string>
#include <vector>
class Feature {
   private:
    std::string field_name_;
    std::string value_;

   public:
    Feature() {}
    Feature(std::string field_name, std::string value)
        : field_name_(field_name), value_(value) {}
    ~Feature() {}

    void set_field_name(std::string field_name);
    void set_value(std::string value);
    void insert_value(std::string value);

    const std::string get_field_name() const;
    const std::string get_value() const;
};
class UserInfo {
   private:
    std::string user_id_;
    std::vector<Feature> features_;

   public:
    UserInfo() {}
    UserInfo(std::string user_id, std::vector<Feature> features)
        : user_id_(user_id), features_(features) {}
    ~UserInfo() {}

    void set_user_id(std::string user_id);
    void set_feature(std::vector<Feature>& features);
    void insert_feature(class Feature feature);

    const std::string get_user_id() const;
    const std::vector<Feature> get_features() const;
};
#endif