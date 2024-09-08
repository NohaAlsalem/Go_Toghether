
import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/modelspost/detailstrip.dart';
import 'package:get/get.dart';
import 'package:driverapp/models/details_screen/detailstripsserves.dart';

class detailscontroller extends GetxController{

  var id;

  Message productlist=Message(id: 0, goal: '', location: '', travelTime: '',
      date: DateTime(0-0-0), status: '', userId: 0, driverId: 0, finish: '') ;

  tripdetailsserves serves = tripdetailsserves();
  var isloading = true.obs;



  @override
  void onInit() {

    id=Get.arguments;
    print('${Get.arguments}');
    super.onInit();
  }

  @override
  void onReady() async {
    productlist = await serves.gettripsdetails(drivertoken.drivertokenn,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}