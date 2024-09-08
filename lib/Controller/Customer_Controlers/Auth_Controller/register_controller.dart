import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/register_Modle.dart';
import 'package:toproject2/Model/Customer_Models/user_Model.dart';
import 'package:toproject2/Network/services/registerServ.dart';

class registerController extends GetxController{
  bool ispassword=false;
  encodePassword(){
    ispassword=!ispassword;
    update();
  }
  var device_key='';
  String address='';
  String email='';
  String password='';
  String firstName='';
  String lastName='';
  String phoneOne='';
  String phoneTwo='';
  int ?stars;
  bool ?status;
File ?profileImage;
  String message='';
  String token='';
  var fcm=FirebaseMessaging.instance;
  void onInit()async{
    await fcm.getToken().then((token) {
      print('this my token $token');
      device_key=token!;
      print('devicekeee:'+device_key);
    });
  }
  registerServ newuser=registerServ();
  Register() async{
    print('gggggggg');
    user_Model user = user_Model(address:address,firstname: firstName,lastname: lastName,device_key: device_key,
        email: email, password: password,phoneOne: phoneOne,phoneTwo: phoneTwo,stars:stars,profileImage: profileImage);
    token=newuser.token;
    status=await newuser.do_register(user,profileImage!);

   // update();
  }
}