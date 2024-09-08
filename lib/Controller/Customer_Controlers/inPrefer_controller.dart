// import 'package:get/get.dart';
// import 'package:toproject2/Model/Customer_Models/prefer_Modle.dart';
// import 'package:toproject2/Network/services/preferServ.dart';
// import 'package:toproject2/View/Shared/Components.dart';
//
// class prefer_Controller extends GetxController{
//   Favorite listfav=Favorite(id:0, name:'', description:'', number: 1, createdAt: '', updatedAt: '');
//
//   preferServ serv=preferServ();
//
//   RxBool isLoading=true.obs;
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//   }
//
//   @override
//   void onReady() async{
//     listfav=await serv.getFav(token!);
//     isLoading(false);
//     // TODO: implement onReady
//     super.onReady();
//   }
// }