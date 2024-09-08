import 'package:get/get.dart';

class internal_external_Home extends GetxController{
  bool isInternal=true;

  void change_home(){
    isInternal= !isInternal;
    update();
  }

}