
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/models/homepage_screen/homepage.dart';
import 'package:driverapp/models/login_screen/login.dart';
import 'package:driverapp/models/profile_screen/profile.dart';
import 'package:driverapp/models/register_screen/register.dart';
import 'package:driverapp/models/tripsscreen/trips.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class navigationbar extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _navigationbarState createState() => _navigationbarState();
}
class _navigationbarState extends State<navigationbar> {

  int page=0;
  List<Widget> pages=[
    home(),
    tripsScreen(),
    profilepage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[page],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SalomonBottomBar(
          unselectedItemColor:Colors.black,
          currentIndex: page,
          onTap: f,
          items: [
            /// Home
            SalomonBottomBarItem(
              unselectedColor: primaryColor,
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: secondaryColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              unselectedColor: primaryColor,
              icon: Icon(Icons.car_rental_sharp),
              title: Text("Trips"),
              selectedColor:  secondaryColor,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              unselectedColor: primaryColor,
              title: Text("Profile"),
              selectedColor:  secondaryColor,
            ),


          ],
        ),
      ),
    );
  }
  void f(int index){
    setState(() {
      page=index;
    });




  }
}

