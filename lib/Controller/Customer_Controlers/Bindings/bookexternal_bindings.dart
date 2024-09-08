
import 'package:get/get.dart';

import '../External_Controlller/bookexternal_controller.dart';




class bookexternalbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<bookexternalcontroller>(bookexternalcontroller());

  }

}
