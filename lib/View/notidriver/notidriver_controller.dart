import 'package:get/get.dart';
import 'package:toproject2/View/notidriver/notidriver_serves.dart';


class notidrivercontroller extends GetxController {
  //List<AllDriver> alloffice =[];


  var id;
  notidriverserves serves = notidriverserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {

 //   alloffice = await serves.gofffice(usertoken.usertokenn);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
