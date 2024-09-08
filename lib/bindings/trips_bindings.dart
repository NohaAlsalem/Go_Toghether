
import 'package:driverapp/models/tripsscreen/trips_controller.dart';
import 'package:get/get.dart';

class tripsbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<tripscontroller>(tripscontroller());

  }

}
