import 'package:get/get.dart';

import '../../../Network/MiddelWare/Auth_middel.dart';
import '../../../Network/services/details_external_trips_user_serves.dart';
import '../../../Model/Customer_Models/detailsexternaltripsuser.dart';
import '../../../Model/Customer_Models/externalcomplaint.dart';


class externaltripsdetailsusercontroller extends GetxController {
  var text;

  var loginstatus;
  var error;
  var token;
  var message;
  late externaldetailstrip serves;
  @override
  void onInit() {
    text='';

    loginstatus=false;
    error='';
    token='';
    message='';

    serves=externaldetailstrip();

    print('${Get.arguments}');
    super.onInit();
  }


  onclick() async{

    complaintexternal t =complaintexternal(text: text);

    loginstatus= await serves.complaintexternall(t,Auth_Middel.token!);

    print(error);

  }

  var id;

  DetailsReservation detailstrips=DetailsReservation(id: 0, userId: 0, numberOfPersons: 0, cost: 0,
      createdAt: DateTime(0,0,0), updatedAt: DateTime(0,0,0),
      travelDestnation: '', travelLocation: '', travelDate: DateTime(0,0,0),
      travelTime: '8', lastTimePaid: '', officeName: '', officeLocation: '',
      officeBranchName: '', officeBranchGoverment: '',
      driverName: '', driverPhoneTwo: '', driverPhoneOne: '', driverImage: '',
      isPayment: 0, paymentAmount: 0, paymentCreatedAt: DateTime(0,0,0),
      paymentUpdatedAt: DateTime(0,0,0), paymentType: '');

  externaldetailstrip serves1 = externaldetailstrip();
  var isloading = true.obs;






  @override
  void onReady() async {
    id=Get.arguments;
    detailstrips = await serves1.gettripsdetailsexternal(Auth_Middel.token!,id);

//print(productlist[0].img_url);

    isloading(false);
    super.onReady();
  }
}
