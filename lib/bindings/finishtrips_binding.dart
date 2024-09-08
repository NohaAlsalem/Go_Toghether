import 'package:driverapp/models/finishtrip_screen/finishtrip_controller.dart';


import 'package:get/get.dart';

class finishbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<finishtripscontroller>(finishtripscontroller());

  }

}
