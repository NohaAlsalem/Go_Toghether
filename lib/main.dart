import 'package:driverapp/bindings/addcar_bindings.dart';
import 'package:driverapp/bindings/details_binding.dart';
import 'package:driverapp/bindings/editprofilebinding.dart';
import 'package:driverapp/bindings/finishtrips_binding.dart';
import 'package:driverapp/bindings/homepage_binding.dart';
import 'package:driverapp/bindings/login_bindings.dart';
import 'package:driverapp/bindings/register_binding.dart';
import 'package:driverapp/bindings/trips_bindings.dart';
import 'package:driverapp/models/addcar_screen/addcar.dart';
import 'package:driverapp/models/choiceregister/choice_register.dart';
import 'package:driverapp/models/controlervar.dart';
import 'package:driverapp/models/details_screen/details.dart';
import 'package:driverapp/models/editprofile_screen/editprofile.dart';
import 'package:driverapp/models/finishtrip_screen/finishtrp.dart';
import 'package:driverapp/models/homepage_screen/homepage.dart';
import 'package:driverapp/models/login_screen/login.dart';
import 'package:driverapp/models/register_screen/register.dart';
import 'package:driverapp/models/start_screen/start.dart';
import 'package:driverapp/models/tripsscreen/trips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(
      GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/start',
      getPages:[
        GetPage(name: '/start', page: ()=>start()),
        GetPage(name: '/login', page: ()=>login(),binding: loginbinding()),
        GetPage(name: '/editprofile', page: ()=>editprofile(),binding: editprofilebinding()),
        GetPage(name: '/register', page: ()=>register(),binding: registerbinding()),
        GetPage(name: '/home', page: ()=>home(),binding: homebinding()),
        GetPage(name: '/navigator', page: ()=>navigationbar(),),
        GetPage(name: '/addcar', page: ()=>addcar(),binding: addcarbinding()),
        GetPage(name: '/trips', page: ()=>tripsScreen(),binding: tripsbinding()),
        GetPage(name: '/details', page: ()=>DetailScreen(),binding: detailsbinding()),
        GetPage(name: '/finishtrip', page: ()=>finishtripsScreen(),binding: finishbinding()),
        GetPage(name: '/choice', page: ()=>choice()),

        ],
        builder: EasyLoading.init(),
      ),
  );
  }

