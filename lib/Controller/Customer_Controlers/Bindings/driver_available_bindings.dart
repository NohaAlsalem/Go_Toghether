
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/drivers_available_controller.dart';



class availabledriverebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<availabledrivercontroller>(availabledrivercontroller());

  }

}
