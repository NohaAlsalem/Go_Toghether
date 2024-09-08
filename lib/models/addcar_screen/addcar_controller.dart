import 'dart:io';

import 'package:driverapp/models/addcar_screen/addcar_serves.dart';
import 'package:driverapp/modelspost/addcar_model.dart';
import 'package:get/get.dart';

class addcarcontroller extends GetxController{



  var cost="";
  var image="";
  var number="";
  var color="";
  var typecar="";
  var agencyimage="";
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
  var show="";


  var registerstatus=false;
  var message;
  File file = new File('');
  File file1 = new File('');
  File file2 = new File('');
  File file3 = new File('');
  addcarsrves servr=addcarsrves();
  registeronclick(file,file1,file2,file3) async{
  addcarmodel cars=
  addcarmodel(color: color,cost: cost,type_car: typecar,agency_image: agencyimage,
  image: image,number: number,lastname: lastname,email:email,show: show,
  date_of_birth: date_of_birth,image_driver: image_driver,image_agency: image_agency,
  address: address,phonetwo: phonetwo,phoneone: phoneone,password: password);
  registerstatus= await servr.addcars(cars,file,file1,file2,file3);
  message=servr.message;
  }



  }





