import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/models/profile_screen/profile.dart';
import 'package:driverapp/models/profile_screen/profile_serves.dart';
import 'package:get/get.dart';
import 'package:driverapp/modelspost/getprofile.dart';

class profilecontroller extends GetxController{
  The0 productlist=The0(id: 0, firstName: '', lastName: '', imageDriver: '',
      dateOfBirth:'0-0-0', email: '', phoneOne: '', phoneTwo: '',
      address: '', imageAgency: '') ;

  getprofile serves = getprofile();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    productlist = await serves.getprofilee(drivertoken.drivertokenn);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}