
import 'package:get/get.dart';

import '../office_controller.dart';
class officebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<officecontroller>(officecontroller());

  }

}
