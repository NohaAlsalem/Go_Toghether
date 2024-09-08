import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:toproject2/View/Customer/Home/Home.dart';
import 'package:toproject2/View/Customer/Home/Maps.dart';
import 'package:toproject2/View/Customer/Home/My_Trip.dart';


import '../../View/Customer/Home/office_screen.dart';
import '../../View/Customer/Home/profile_user.dart';

class Home_Controller extends GetxController{


  final List<Widget> pages = [
    Home(),
    officeScreen(),
    MyTrip(),
    profilepage(),
  ];
  List<String> titles = <String>[
    'Home',
    'All Office',
    'My Trips',
    'Profile',
  ];

  int currentIndex=0;
  void changeNav(index) {
    currentIndex = index;
    update();
  }
}