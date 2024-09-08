

import 'package:get/get.dart';
import 'package:toproject2/Network/services/profile_user_serves.dart';
import 'package:toproject2/Model/Customer_Models/profile_user.dart';
import '../../Network/MiddelWare/Auth_middel.dart';

class profilecontroller extends GetxController{
  Temperatures profile=new Temperatures(info: new Info(id: 0,
      firstname: '', lastname: '', address: '',
      dateOfBirth: DateTime(0,0,0), role: 0, email: '',

      emailVerifiedAt: '', phoneOne: '',

      phoneTwo: '', createdAt: DateTime(0,0,0),
      updatedAt: DateTime(0,0,0), profileImage: ''));

  getprofile serves = getprofile();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    profile = await serves.getprofilee(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}