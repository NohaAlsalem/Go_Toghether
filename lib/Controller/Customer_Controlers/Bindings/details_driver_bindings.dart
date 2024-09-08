

import 'package:get/get.dart';

import '../details_driver_controller.dart';



class detailsdriverbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<detailsdrivercontroller>(detailsdrivercontroller());

  }

}
