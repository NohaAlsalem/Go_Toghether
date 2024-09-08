import 'package:driverapp/models/editprofile_screen/editprofile_controller.dart';
import 'package:driverapp/models/login_screen/login_controller.dart';
import 'package:get/get.dart';

class editprofilebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<editprofilkecontroller>(editprofilkecontroller());

  }

}
