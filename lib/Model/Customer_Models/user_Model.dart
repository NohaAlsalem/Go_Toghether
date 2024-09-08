import 'dart:io';

import 'package:dio/dio.dart';
import '../../Network/APIs.dart';
class user_Model{
  String  ? firstname;
  String ? lastname;
  String ? password;
  String ? email;
  String ? device_key;
  String ? phoneOne;
  String ? phoneTwo;
  File ? profileImage;
  int ? stars;
  String ? address;
  user_Model({
    this.address,
    this.device_key,
  this.email,
  this.password,
  this.stars,
  this.firstname,
  this.profileImage,
  this.lastname,
  this.phoneOne,
  this.phoneTwo,
  });

  }