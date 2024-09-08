import 'package:driverapp/models/details_screen/details_controller.dart';
import 'package:driverapp/models/login_screen/login_controller.dart';
import 'package:get/get.dart';

class detailsbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<detailscontroller>(detailscontroller());

  }

}
