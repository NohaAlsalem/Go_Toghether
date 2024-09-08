import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/user_Model.dart';
import 'package:toproject2/Network/services/loginServ.dart';

class login_controller extends GetxController{

bool ispassword=false;
encodePassword(){
  ispassword=!ispassword;
  update();
}
var device_key;
  var email;
  var password;
  var loginstatus;
  var error;
  var token;
  var message;
  late loginServ serves;
var fcm=FirebaseMessaging.instance;
  @override
  void onInit() async{
    device_key='';
  email='';
  password='';
  loginstatus=false;
  error='';
  token='';
  message='';
    await fcm.getToken().then((token) {
      print('this my token $token');
      device_key=token!;
      print('devicekeee:'+device_key);
    });
  serves=loginServ();
  super.onInit();
  }


  onclicklogin() async{

    user_Model user=user_Model(password: password,email: email,device_key: device_key);

  loginstatus= await serves.do_login(user);
  // print(loginstatus);
  error=serves.error;
  print(error);
  token=serves.token;
  print('this is token :$token');
  message=serves.message;
  }
  }