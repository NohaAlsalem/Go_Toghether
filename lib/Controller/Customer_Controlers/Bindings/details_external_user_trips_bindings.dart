


import 'package:get/get.dart';

import '../External_Controlller/details_external_trips_user_controller.dart';



class detailsexternaltripsuserbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<externaltripsdetailsusercontroller>(externaltripsdetailsusercontroller());

  }

}
