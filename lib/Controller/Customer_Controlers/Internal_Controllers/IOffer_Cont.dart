import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/External_Modle/externalOffer_Modle.dart';
import 'package:toproject2/Model/Customer_Models/Internal_Modle/internalOffer_Modle.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/Network/services/External_Services/ooferServ.dart';
import 'package:toproject2/main.dart';

import '../../../Network/services/Internal_Services/inofferServ.dart';

class IOfeer_Cont extends GetxController{
  InOffers ListOffers=InOffers(offires: [[]]);
  inofferServ serv=inofferServ();
// RxBool isLoading=true.obs;

  void onInit() async{

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() async{
    print('hlooo');
    print(Auth_Middel.token!);
    ListOffers=await serv.getIOffer(Auth_Middel.token!);
    // print(ListOffers.offires[0][0].branchName);
    // isLoading(false);
    // TODO: implement onReady
    super.onReady();
  }
}