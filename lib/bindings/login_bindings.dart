import 'package:driverapp/models/login_screen/login_controller.dart';
import 'package:get/get.dart';

class loginbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<logincontroller>(logincontroller());

  }

}
