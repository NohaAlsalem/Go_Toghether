import 'package:get/instance_manager.dart';
import 'package:http/http.dart';
import 'package:toproject2/Controller/Customer_Controlers/Auth_Controller/login_controller.dart';
import 'package:toproject2/Controller/Customer_Controlers/Auth_Controller/register_controller.dart';

class login_bind implements Bindings{
  @override
  void dependencies() {
    Get.put(login_controller());
    // TODO: implement dependencies
  }
}

class register_bind implements Bindings{
  @override
  void dependencies() {
    Get.put(registerController());
    // TODO: implement dependencies
  }
}