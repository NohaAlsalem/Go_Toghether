import 'package:driverapp/colors.dart';
import 'package:driverapp/components/container.dart';
import 'package:driverapp/components/textfeild.dart';
import 'package:driverapp/models/choiceregister/choice_register.dart';
import 'package:driverapp/models/controlervar.dart';
import 'package:driverapp/models/homepage_screen/homepage.dart';
import 'package:driverapp/models/login_screen/login_controller.dart';
import 'package:driverapp/models/login_screen/login_serves.dart';
import 'package:driverapp/models/register_screen/register.dart';
import 'package:driverapp/models/start_screen/start.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
class login extends StatelessWidget {


  logincontroller controller =
  Get.put<logincontroller>(logincontroller());
  var loginkey = GlobalKey<FormState>();
  loginserves serves = loginserves();

  @override
  Widget build(BuildContext context) {
  return     Scaffold(
      body: SafeArea(
      child: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.001, 0.8, 0.001],
      colors: [
      primaryColor,
      Colors.white,
      Colors.white,
      ],
  )),
    child: Column(
    children: [
    Expanded(
    flex: 2,
    child: Container(
    width: double.infinity,
    child:Image.asset('assets/images/logo.png',fit: BoxFit.cover,) ,
  //  child: Lottie.asset('assets/images/animation_llk9n5rz.json'),
    ),
    ),
    Expanded(
    flex: 1,
    child: Center(
    child: SingleChildScrollView(
    child: Column(
    children: [
    SizedBox(height: 20),
    Text(
    'login',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: 30,
    fontStyle: FontStyle.normal),
    ),
    SizedBox(
    height: 5,
    ),
    Text(
    'To Use The App',
    style: TextStyle(
    color: primaryColor,
    fontSize: 10,
    fontStyle: FontStyle.normal),
    ),
    ],
    ),
    ),
    ),
    ),
    Expanded(
    flex: 3,
    child: SingleChildScrollView(
    child: Form(
    key:loginkey ,
    child: Column(
    children: [
    textfield(
    hint_text: 'Email',
    // controller: controller.email,
    input_type: TextInputType.text,
    onchange: (value) {
    controller.email = value;
    },
    iconprifex: Icons.person,
    validate: (String v) {
    if (((v == null || v.isEmpty) ||
    (v.length < 8) ||
    !v.contains('@'))) {
    return 'pleas enter your email';
    }
    }),
    SizedBox(
    height: 25,
    ),
    GetBuilder<logincontroller>(
    builder: (controller) => textfield(
    hint_text: 'Password',
    iconprifex: Icons.lock_clock_outlined,
    input_type: TextInputType.visiblePassword,

    onchange: (value) {
    controller.password = value;
    },
    validate: (value) {
    if (value.isEmpty) {
    return 'password must not be empty';
    }
    if (value.length <= 6) {
    return 'pleas enter password >6';
    }

    return null;
    },
    ),
    ),
    SizedBox(
    height: 30,
    ),
    shapecont(
    text: 'Login',
    color: secondaryColor,
    fun: () {
      Get.to(navigationbar());
    if (loginkey.currentState!.validate()) {
    onclicklogin();

    }
    }),



    SizedBox(
    height: 30,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Do yo have not account '),
    Icon(
    Icons.arrow_forward,
    color: primaryColor,
    ),
    InkWell(
    onTap: () {
    Get.to(choice(),);
    },
    child: Container(
    color: secondaryColor,
    child: Text(
    'Rgister Now',
    style: TextStyle(
    color: primaryColor, fontSize: 17),
    ),
    ),
    ),
    ],
    )
    ],
    ),
    ),
    ),
    ),
    ],
    ),
    ),
    ),
  );

  }
  void  onclicklogin() async{
   // EasyLoading.show(status: 'loading');
    await  controller.onclicklogin();

  }
  }

