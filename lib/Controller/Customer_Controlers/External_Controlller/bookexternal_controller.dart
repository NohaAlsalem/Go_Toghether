import 'package:get/get.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';

import '../../../Network/services/bookexternalServ.dart';
import '../../../Model/Customer_Models/available_seats.dart';


class bookexternalcontroller extends GetxController {

  List<AvailableSeat> allseats =
  [];

  var id;
  bookexternalserves serves = bookexternalserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    allseats = await serves.getallseatsavailable(Auth_Middel.token!);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
