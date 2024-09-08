
import 'package:get/get.dart';

import '../detailsofff_controller.dart';


class detailsofficebinding implements Bindings{
  @override
  void dependencies() {
    Get.put<detailsofficecontroller>(detailsofficecontroller());

  }

}
