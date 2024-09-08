import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:toproject2/Controller/Customer_Controlers/Home_Controller.dart';
import 'package:toproject2/View/Customer/Auth_Customer/signIn.dart';
import 'package:toproject2/View/Customer/Home/Maps.dart';
import 'package:toproject2/View/Shared/Locator.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/notiuser/noti_user.dart';
import 'package:toproject2/main.dart';

import '../../../Controller/Customer_Controlers/Bindings/googlemap_binding.dart';


class home_Base extends StatelessWidget {
  home_Base({Key? key}) : super(key: key);
  final Home_Controller controller = Get.find();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:Image.asset('assets/images/logo.png') ,
        title: GetBuilder<Home_Controller>(builder: (controller)=>Text('${controller.titles[controller.currentIndex]}',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),),
        actions: [
    IconButton(icon:Icon(Icons.notification_important,color: primaryColor,),onPressed: (){
    Get.to(usernotiScreen());}),
          IconButton(icon:Icon(Icons.location_searching_sharp,color: primaryColor,),onPressed: (){
            Get.to(Locator());
          },),
        ],
      ),
      body: GetBuilder<Home_Controller>(
          init: Home_Controller(),
          builder: (controller) => controller.pages[controller.currentIndex]),
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       InkWell(
      //         onTap: (){
      //           shared?.clear().then((value) => Get.to(signIn()));
      //         },
      //           child: ListTile(
      //         title: Text(
      //           'Logout',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //         leading: Icon(
      //           Icons.logout,
      //           color: Colors.white,
      //         ),
      //         tileColor: primaryColor,
      //       ))
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GetBuilder<Home_Controller>(
          builder: (controller) => SalomonBottomBar(
            // unselectedItemColor:Colors.black,
            onTap: (index) => {controller.changeNav(index)},
            currentIndex: controller.currentIndex,
            items: [
              SalomonBottomBarItem(
                unselectedColor: primaryColor,
                icon: Icon(Icons.home_sharp),
                title: Text("Home"),
                selectedColor: secondaryColor,
              ),
              SalomonBottomBarItem(
                unselectedColor: primaryColor,
                icon: Icon(Icons.all_inclusive_sharp),
                title: Text("Offices"),
                selectedColor: secondaryColor,
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.my_library_books_sharp),
                unselectedColor: primaryColor,
                title: Text("My Trips"),
                selectedColor: secondaryColor,
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.perm_contact_cal_sharp),
                unselectedColor: primaryColor,
                title: Text("Profile"),
                selectedColor: secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
