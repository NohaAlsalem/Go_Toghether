import 'package:get/get.dart';
import 'package:toproject2/Network/MiddelWare/user_con.dart';
import 'package:toproject2/View/externalofficetrip/externalofficedtripserves.dart';

import 'package:toproject2/View/externalofficetrip/externalofficetripmodel.dart';
class externaltripoffcecontroller extends GetxController {
  var text;

  var loginstatus;
  var error;
  var token;
  var message;
  late externaltripoffceservees serves;
  @override
  void onInit() {
    text='';

    loginstatus=false;
    error='';
    token='';
    message='';

    serves=externaltripoffceservees();
    id=Get.arguments;
    print('${Get.arguments}');
    super.onInit();
  }



  var id;

  Temperatures  tripoffice=Temperatures(office:'' , externel: []);

  var isloading = true.obs;






  @override
  void onReady() async {
    tripoffice = await serves.externaltripoffcen(usertoken.usertokenn,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
