import 'package:get/get.dart';
import '../../Model/Customer_Models/detailscar.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/detailscar_serves.dart';



class cardetailsusercontroller extends GetxController {
  Temperatures detailscar=new Temperatures(car: [],
      color: "", type: "", driverfirst: "", driverlast: "");

  detailscarserves serves = detailscarserves();
  var isloading = true.obs;

  var id;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    id=Get.arguments;
    detailscar = await serves.getdetailscar(Auth_Middel.token!,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
