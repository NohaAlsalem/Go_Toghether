import 'package:driverapp/models/login_screen/login_controller.dart';
import 'package:driverapp/models/register_screen/register_controller.dart';
import 'package:get/get.dart';

class registerbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<registercontroller>(registercontroller());

  }

}
