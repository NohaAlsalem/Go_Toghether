

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/favourite_user_get.dart';

import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/favourtie_serves.dart';

class favouritecontroller extends GetxController{
  Temperatures favourtie=new Temperatures(userId: 0, favorite:
  new Favorite(id: 0, name: '', description: '',
      number: 0, createdAt: DateTime(0,0,0), updatedAt: DateTime(0,0,0)));

  favourite serves = favourite();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    favourtie = await serves.getfavourite(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}