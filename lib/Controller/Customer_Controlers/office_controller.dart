import 'package:get/get.dart';

import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/office_serves.dart';
import '../../Model/Customer_Models/alloffice.dart';



class officecontroller extends GetxController {
  List<AllDriver> alloffice =[];


  var id;
  officeserves serves = officeserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    alloffice = await serves.gofffice(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
