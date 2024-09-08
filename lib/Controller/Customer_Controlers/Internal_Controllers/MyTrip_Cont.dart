import 'package:get/get_state_manager/get_state_manager.dart';

class MyTrip_Cont extends GetxController{
  bool isInternal=true;

  void change_home(){
    isInternal= !isInternal;
    update();
  }

}