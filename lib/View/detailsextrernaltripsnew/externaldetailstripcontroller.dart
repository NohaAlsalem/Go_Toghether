import 'package:get/get.dart';
import 'package:toproject2/Network/MiddelWare/user_con.dart';
import 'package:toproject2/View/detailsextrernaltripsnew/externaldetailstripserves.dart';

import 'package:toproject2/View/detailsextrernaltripsnew/detailsexternaltripnewmodel.dart';
class externaldetailstripnewcontroller extends GetxController {
  var text;

  var loginstatus;
  var error;
  var token;
  var message;
  late detailsextrnaltripnewservees serves;
  @override
  void onInit() {
    text='';

    loginstatus=false;
    error='';
    token='';
    message='';

    serves=detailsextrnaltripnewservees();
    id=Get.arguments;
    print('${Get.arguments}');
    super.onInit();
  }



  var id;

 Temperatures  detailstrips=Temperatures(travel: [], nameOffice: '',
     firstName: '', lastName: '');

  var isloading = true.obs;






  @override
  void onReady() async {
    detailstrips = await serves.detailsextrnalnew(usertoken.usertokenn,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
