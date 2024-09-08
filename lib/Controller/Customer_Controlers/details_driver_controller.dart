import 'package:get/get.dart';

import '../../Model/Customer_Models/getondriver.dart';
import '../../Model/Customer_Models/rating.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../../Network/services/details_driver_serves.dart';


class detailsdrivercontroller extends GetxController {
  Temperatures profile=Temperatures(id: 0, firstName: '',
      lastName: '', imageDriver: '', dateOfBirth: '', email: ''
          , phoneOne: '', phoneTwo: '', address: '', imageAgency: ''
          '', message: '', imageDriverUrl: '', imageAgencyUrl: '');


  getprofile serves = getprofile();
  var isloading = true.obs;

var id;



  @override
  void onReady() async {

    id=Get.arguments;
    profile = await serves.getdetailsdriver(Auth_Middel.token!,id);


print("juh");
    print(profile.firstName);


    isloading(false);
    super.onReady();
  }

var ratingstatus;
  var comment;
  var driver_id;
  var ratingnumber;
  var error;
  var token;
  var message;

  @override
  void onInit() {
    comment='';
    driver_id=0;
    ratingstatus=false;
    error='';
    token='';
    message='';
    ratingnumber=0;

    serves=getprofile();
    super.onInit();
  }


  onclickrating() async{

    rating r=rating(comment: comment,driver_id: driver_id,nuberstar: ratingnumber);

    ratingstatus= await serves.ratingg( r,Auth_Middel.token!);


  }
}
