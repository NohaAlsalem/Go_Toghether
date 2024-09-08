import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/internal_external_homeCont.dart';

class subHome_binding implements Bindings{
  @override
  void dependencies() {
    Get.put<internal_external_Home>(internal_external_Home());
    // TODO: implement dependencies
  }
}