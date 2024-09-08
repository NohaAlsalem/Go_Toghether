import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/External_Modle/externalOffer_Modle.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/Network/services/External_Services/ooferServ.dart';
import 'package:toproject2/main.dart';

class Ofeer_Cont extends GetxController{
  Temperatures ListOffers=Temperatures(offires: []);
offerServ serv=offerServ();
// RxBool isLoading=true.obs;

  void onInit() async{

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() async{
    print('hiiiiiii');
    print(Auth_Middel.token!);
    ListOffers=await serv.getOffer(Auth_Middel.token!);
    // print(ListOffers.offires[0][0].branchName);
    // isLoading(false);
    // TODO: implement onReady
    super.onReady();
  }
}