import 'dart:io';

import 'package:driverapp/models/editprofile_screen/editprofile_serves.dart';
import 'package:driverapp/models/register_screen/register_serves.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
class editprofilkecontroller extends GetxController{


  var phoneone="";
  var phonetwo="";
  var password="";
  var email="";
  var firstname="";
  var lastname="";
  var image_driver="";
  var image_agency="";
  var address="";
  var date_of_birth="";


  var registerstatus=false;
  var message;
  File file = new File('');
  File file1 = new File('');
  editprofileserves servr=editprofileserves();
  editonclick(file,file1) async{
    driverrequist driver=
    driverrequist(firstname: firstname,lastname: lastname,email: email,date_of_birth: date_of_birth,
        address: address,image_agency: image_agency,image_driver: image_driver,phoneone: phoneone
        ,phonetwo: phonetwo);
    registerstatus= await servr.editprofileser(driver,file,file1);
    message=servr.message;
    if(message is List){
      String s='';
      for(String ss in message){
        s+=ss+'\n';
        message=s;
      }
    }



  }


}

