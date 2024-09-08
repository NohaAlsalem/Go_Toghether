import 'package:driverapp/models/homepage_screen/homepage_controller.dart';

import 'package:get/get.dart';

class homebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<homecontroller>(homecontroller());

  }

}
