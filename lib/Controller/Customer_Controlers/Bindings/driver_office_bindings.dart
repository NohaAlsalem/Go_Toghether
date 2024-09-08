
import 'package:get/get.dart';

import '../driver_office_controller.dart';




class driverofficebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<driver_officecontroller>(driver_officecontroller());

  }

}
