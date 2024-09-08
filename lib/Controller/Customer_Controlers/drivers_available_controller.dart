import 'package:get/get.dart';
import 'package:toproject2/Network/services/driver_available_serves.dart';
import 'package:toproject2/Model/Customer_Models/alldrivermodel.dart';

import '../../Network/MiddelWare/Auth_middel.dart';


class availabledrivercontroller extends GetxController {

  List<AllDriver> alldriver =
[];

  var id;
  availabledriverserves serves = availabledriverserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    alldriver = await serves.getavailabledriver(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
