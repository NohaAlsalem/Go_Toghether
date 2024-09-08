import 'package:get/get.dart';

import '../../Model/Customer_Models/complaint_model.dart';
import '../../Model/Customer_Models/detailsinternaltrips.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/details_trip_serves.dart';

class tripsdetailsusercontroller extends GetxController {
  var text;

  var loginstatus;
  var error;
  var token;
  var message;
  late detailstrip serves;
  @override
  void onInit() {
    text='';

    loginstatus=false;
    error='';
    token='';
    message='';

    serves=detailstrip();
    id=Get.arguments;
    print('${Get.arguments}');
    super.onInit();
  }


  onclicklogin() async{

    complaint t =complaint(text: text);

    loginstatus= await serves.complaintinternal(t,Auth_Middel.token!);
    error=serves.error;
    print(error);
    token=serves.token;
    message=serves.message;
  }

  var id;

  List<Datum > detailstrips=[];

  detailstrip serves1 = detailstrip();
  var isloading = true.obs;






  @override
  void onReady() async {
    detailstrips = await serves1.gettripsdetails(Auth_Middel.token!,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
