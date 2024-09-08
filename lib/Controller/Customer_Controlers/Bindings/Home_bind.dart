import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/Home_Controller.dart';

class Home_Bind implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Home_Controller());
  }
}