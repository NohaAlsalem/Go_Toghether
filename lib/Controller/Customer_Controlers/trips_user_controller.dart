import 'package:get/get.dart';

import '../../Model/Customer_Models/internaltripsuser.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/tripsinternalserves.dart';


class tripsusercontroller extends GetxController {
  List<AllTripsInternal> alltrips =
  [];

  var id;
  internalusertripsserves serves = internalusertripsserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    alltrips = await serves.getinternaltrips(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
