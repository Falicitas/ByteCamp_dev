#include "advertising.h"
void Predicate::set_op(string op) {
    op_ = op;
}

void Predicate::set_reverse(bool reverse) {
    reverse_ = reverse;
}

void Predicate::set_value(vector<string> values) {
    values_ = values;
}

void Predicate::set_field_name(string field_name) {
    field_name_ = field_name;
}

void Predicate::insert_value(string value) {
    values_.push_back(value);
}

const string Predicate::get_op() const {
    return op_;
}

const bool Predicate::get_reverse() const {
    return reverse_;
}

const string Predicate::get_field_name() const {
    return field_name_;
}

const vector<string> Predicate::get_values() const {
    return values_;
}



void Adv::set_id(unsigned long long id) {
    id_ = id;
}

void Adv::set_preds(vector<Predicate> preds) {
    preds_ = preds;
}

void Adv::insert_predicate(class Predicate pred) {
    preds_.push_back(pred);
}

const unsigned long long Adv::get_id() const {
    return id_;
}

const vector<Predicate> Adv::get_preds() const {
    return preds_;
}
