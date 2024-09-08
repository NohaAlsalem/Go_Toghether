
import 'package:get/get.dart';

import '../External_Controlller/terips_external_controller.dart';
class externaltripsuserbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<externaltripsusercontroller>(externaltripsusercontroller());

  }

}
