import 'dart:io';

import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/models/register_screen/register_serves.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:driverapp/modelspost/showalloffice.dart';
class registercontroller extends GetxController{


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
  requistdriver servr=requistdriver();
  registeronclick(file,file1) async{
  driverrequist driver=
  driverrequist(firstname: firstname,lastname: lastname,email: email,date_of_birth: date_of_birth,
  address: address,image_agency: image_agency,image_driver: image_driver,phoneone: phoneone
  ,phonetwo: phonetwo,password: password);
  registerstatus= await servr.requisdriver(driver,file,file1);
  message=servr.message;

  }



Temperatures officelist =Temperatures(the0: The0(id: 0, phoneTwo: '', phoneOne: ''
    '', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
    , branchId: 0), the1:The0(id: 0, phoneTwo: '', phoneOne: ''
    '', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
    , branchId: 0), the2: The0(id: 0, phoneTwo: '', phoneOne: ''
'', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
, branchId: 0), message: '');
// date:DateTime(0,0,0), status: '', userId: 0, driverId: 0, finish: '') ;

  requistdriver serves = requistdriver();
var isloading = true.obs;



@override
void onInit() {
  super.onInit();
}

@override
void onReady() async {
  officelist = await serves.showoffice(drivertoken.drivertokenn);

print(officelist.the0.name);

  isloading(false);
  super.onReady();
}

  }




