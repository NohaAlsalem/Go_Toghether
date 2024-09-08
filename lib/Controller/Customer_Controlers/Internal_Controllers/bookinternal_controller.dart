import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

import '../../../Model/Customer_Models/internalreservationpost.dart';
import '../../../Network/MiddelWare/Auth_middel.dart';
import '../../../Network/services/bookinternalserves.dart';



class bookinternalcontroller extends GetxController {
 bool theType=false;
 bool locationColor=false;
 defaultLoc(){
   locationColor=!locationColor;
   update();
 }
 Color theColor=secondaryColor;
 changeType(){
   theType=!theType;
   theColor=secondaryColor;
   update();
 }


  var date;
  var driverid;
  var location;
  var goal;
  var traveltime;
  var message;
  var bookstatus;
  var numberOfPerson;
 var conatinBox;
 var type_book;

   bookinternalserves serves = bookinternalserves();
  @override
  void onInit() {
    goal='';
    bookstatus=false;
    location='';
    driverid='';
    date='';
    traveltime='';
    message='';
    numberOfPerson='';
    conatinBox='';
    type_book='';



    //serves=
    super.onInit();
  }


  onclickbook() async{

    internalreservationpost book=internalreservationpost(goal: goal,location: location,
    traveltime: traveltime,date: date,driverid: driverid,content: conatinBox,type_book: type_book,num_person: numberOfPerson);

    bookstatus= await serves.bookinternal( book,Auth_Middel.token!);

    message=serves.message;
  }
}
