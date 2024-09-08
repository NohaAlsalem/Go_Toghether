
import 'package:driverapp/models/profile_screen/profile_controller.dart';
import 'package:get/get.dart';

class profilebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<profilecontroller>(profilecontroller());

  }

}
