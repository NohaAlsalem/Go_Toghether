
import 'package:get/get.dart';

import '../Internal_Controllers/bookinternal_controller.dart';



class bookinternalbinding implements Bindings{
  @override
  void dependencies() {
    Get.put<bookinternalcontroller>(bookinternalcontroller());

  }

}
