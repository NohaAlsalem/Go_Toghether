
import 'package:get/get.dart';

import '../details_car_controller.dart';

class tripsdetailsuserbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<cardetailsusercontroller>(cardetailsusercontroller());

  }

}
