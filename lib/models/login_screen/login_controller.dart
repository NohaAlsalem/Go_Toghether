import 'package:driverapp/models/login_screen/login_serves.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';
import 'package:get/get.dart';

class logincontroller extends GetxController{
  bool ispassword=false;
  encodePassword(){
    ispassword=!ispassword;
    update();
  }

  var email;
  var password;
  var loginstatus;
  var error;
  var token;
  var message;
  late loginserves serves;
  @override
  void onInit() {
    email='';
    password='';
    loginstatus=false;
    error='';
    token='';
    message='';

    serves=loginserves();
    super.onInit();
  }


  onclicklogin() async{

    driverrequist driver=driverrequist(password: password,email: email);

    loginstatus= await serves.login( driver);
    error=serves.error;
    print(error);
    token=serves.token;
    message=serves.message;
  }
}