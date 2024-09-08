import 'package:get/get.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';

import '../../../Network/services/trips_xternaluser_serves.dart';
import '../../../Model/Customer_Models/tripsexternaluser.dart';

class externaltripsusercontroller extends GetxController {
  List<AllExternalReservations> alltrips =
  [];

  var id;
  extrenalusertripsserves serves = extrenalusertripsserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    alltrips = await serves.getexternaltrips(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
