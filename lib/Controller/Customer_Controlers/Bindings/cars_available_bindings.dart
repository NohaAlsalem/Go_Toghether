
import 'package:get/get.dart';

import '../cars_available_controller.dart';


class availablecarsbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<availablecarscontroller>(availablecarscontroller());

  }

}
