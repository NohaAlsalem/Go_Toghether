
import 'package:get/get.dart';

import '../profile_user_controller.dart';


class profilebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<profilecontroller>(profilecontroller());

  }

}
