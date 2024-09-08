import 'package:get/get.dart';

import '../../Model/Customer_Models/detailsoffice_model.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/office_details_serves.dart';
class detailsofficecontroller extends GetxController {
  Temperatures detailsoffice=new Temperatures(government: "", typeTravel: "", star: "",
      stars: 3, office: []);

  officeservees serves = officeservees();
  var isloading = true.obs;

  var id;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

    id=Get.arguments;
    detailsoffice = await serves.getdetailsoffice(Auth_Middel.token!,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
