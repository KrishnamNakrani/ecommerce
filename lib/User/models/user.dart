// ignore_for_file: non_constant_identifier_names, unused_label

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserData {
  String email = "";
  String name = "";
  String Phone = "";
  int post = 0;
  bool is_public = true;
  bool show_active_status = true;
  bool push_notification = true;
  String password = "";
  String profileUrl = "";
  DateTime? joinTime;
  bool verified = false;
  String uid = "";
  String status = "";
  String country="";
  String state = "";
  String city = "";
  String addreess = "";
  String sublocality = "";
  String zipCode = "";
  double latitude = 0;
  double longitude=0;
  String s_country="";
  String s_state = "";
  String s_city = "";
  String s_addreess = "";
  String s_sublocality = "";
  String s_zipCode = "";
  double s_latitude = 0;
  double s_longitude=0;
  int total_reward=0;
  DateTime? first_date;
  bool? first_open;
  String  first_discount="";
  DateTime? second_date;
  bool? second_open;
  String  second_discount="";
  DateTime? third_date;
  bool? third_open;
  String  third_discount="";
  DateTime? fourth_date;
  bool? fourth_open;
  String  fourth_discount="";
  String  type="";
  UserData.fromSnapShort(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map;
    Timestamp date = data['join_time'];
    Timestamp f_date = data['rewards']['first']['first_date'];
    Timestamp s_date = data['rewards']['second']['second_date'];
    Timestamp t_date = data['rewards']['third']['third_date'];
    Timestamp fo_date = data['rewards']['fourth']['fourth_date'];
    email = data['email'];
    joinTime = date.toDate();
    post = data['post'];
    type = data['type'];
    is_public = data['is_public'];
    show_active_status = data['show_active_status'];
    push_notification = data['push_notification'];
    name = data['name'];
    Phone = data['phone'];
    password = data['password'];
    profileUrl = data['profile_pic'];
    verified = data['verified'];
    status = data['status'];
    country = data['address']["country"];
    state = data['address']["state"];
    city = data['address']["city"];
    addreess = data['address']["addreess"];
    sublocality = data['address']["sublocality"];
    zipCode = data['address']["zipCode"];
    latitude = data['address']["latitude"];
    latitude = data['address']["longitude"];
    s_country = data['save_address']["s_country"];
    s_state = data['save_address']["s_state"];
    s_city = data['save_address']["s_city"];
    s_addreess = data['save_address']["s_addreess"];
    s_sublocality = data['save_address']["s_sublocality"];
    s_zipCode = data['save_address']["s_zipCode"];
    s_latitude = data['save_address']["s_latitude"];
    s_latitude = data['save_address']["s_longitude"];
    total_reward = data['rewards']['total_reward'];
    first_date = f_date.toDate();
    first_discount = data['rewards']['first']['first_discount'];
    first_open = data['rewards']['first']['first_open'];
    second_date = s_date.toDate();
    second_discount = data['rewards']['second']['second_discount'];
    second_open = data['rewards']['second']['second_open'];
    third_date = t_date.toDate();
    third_discount = data['rewards']['third']['third_discount'];
    third_open = data['rewards']['third']['third_open'];
    fourth_date = fo_date.toDate();
    fourth_discount = data['rewards']['fourth']['fourth_discount'];
    fourth_open = data['rewards']['fourth']['fourth_open'];
    uid = snapshot.id;
  }
}
