import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/googleMap_controller.dart';

class map_Bind implements Bindings{
  @override
  void dependencies() {
    Get.put<googleMap>(googleMap());
    // TODO: implement dependencies
  }
}