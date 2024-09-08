import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/models/finishtrip_screen/finishtrip_serves.dart';
import 'package:driverapp/models/tripsscreen/tripdoserves.dart';
import 'package:driverapp/modelspost/finishtrip.dart';
import 'package:get/get.dart';

class finishtripscontroller extends GetxController{

  Data productlist =
  Data(id: 0, firstName: '', lastName: '', email: '',
      password: '0', role: 1, imageDriver: '', imageAgency: '',
      dateOfBirth: ''
          '', status: '', address: '', officeId: 0, phoneOne: '', phoneTwo: '',
      reservations:[]);
  //Reservation(id: 0, goal: '', location: '', travelTime: '',
  // date:DateTime(0,0,0), status: '', userId: 0, driverId: 0, finish: '') ;

  finishtripserves serves = finishtripserves();
  var isloading = true.obs;



  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    productlist = await serves.finishget(drivertoken.drivertokenn);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
