
import 'package:get/get.dart';

import '../trips_user_controller.dart';


class tripsuserbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<tripsusercontroller>(tripsusercontroller());

  }

}
