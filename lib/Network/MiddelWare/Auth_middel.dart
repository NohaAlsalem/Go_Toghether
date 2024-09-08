import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:toproject2/main.dart';

class Auth_Middel extends GetMiddleware{
static   String? token= shared!.getString('token');

  // @override
  // RouteSettings? redirect(String ?route){
  //   if(token!=null)
  //     return RouteSettings(name:'/home');
  //
  //  }
}