
import 'package:get/get.dart';

import '../trips_user_details_controller.dart';


class tripsdetailsuserbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<tripsdetailsusercontroller>(tripsdetailsusercontroller());

  }

}
