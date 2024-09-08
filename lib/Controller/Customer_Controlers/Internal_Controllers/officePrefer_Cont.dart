import 'package:get/get.dart';
import 'package:toproject2/Model/Customer_Models/External_Modle/externalPrefer_Modle.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/Network/services/Internal_Services/preferServ.dart';

class officePrefer_Cont extends GetxController{
  bool isDialog=false;
  callDialog(){
    isDialog=true;
    update();
  }
List<FavoriteOffice> Listprefers=[];
  preferServ serv=preferServ();
// RxBool isLoading=true.obs;

  void onInit() async{

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() async{
    print('hlooo');
    print(Auth_Middel.token!);
    Listprefers=await serv.getprefer(Auth_Middel.token!);
    // print(ListOffers.offires[0][0].branchName);
    // isLoading(false);
    // TODO: implement onReady
    super.onReady();
  }
}