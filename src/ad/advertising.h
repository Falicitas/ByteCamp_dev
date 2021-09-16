#ifndef ADVERTIS_H
#define ADVERTIS_H

#include <string>
#include <vector>
using namespace std;

class Predicate {
   private:
    string op_;
    bool reverse_;
    string field_name_;
    vector<string> values_;
    // string

   public:
    // methods
    Predicate() {}
    Predicate(string op, bool reverse, string field_name, vector<string>& value)
        : op_(op), reverse_(reverse), field_name_(field_name), values_(value) {}
    ~Predicate() {}

    void set_op(string op);
    void set_reverse(bool reverse);
    void set_field_name(string field_name);
    void set_value(vector<string> values);
    void insert_value(string value);

    const string get_op() const;
    const bool get_reverse() const;
    const string get_field_name() const;
    const vector<string> get_values() const;
};

class Adv {
   private:
    unsigned long long id_;
    vector<Predicate> preds_;

   public:
    Adv() {}
    Adv(unsigned long long id, vector<Predicate>& preds)
        : id_(id), preds_(preds) {}
    ~Adv() {}

    void set_id(unsigned long long id);
    void set_preds(vector<Predicate> preds);
    void insert_predicate(class Predicate pred);

    const unsigned long long get_id() const;
    const vector<Predicate> get_preds() const;
};
#endif