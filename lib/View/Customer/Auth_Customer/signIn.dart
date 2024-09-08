import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:toproject2/Controller/Customer_Controlers/Auth_Controller/login_controller.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/Auth_binding.dart';
import 'package:toproject2/View/Customer/Auth_Customer/register.dart';
import 'package:toproject2/View/Customer/addwalletuser.dart';
import '../../../main.dart';
import '../../Shared/TextField.dart';
import '../../Shared/common_Color.dart';
import '../../Shared/container.dart';

class signIn extends StatelessWidget {
  signIn({Key? key}) : super(key: key);
  var loginkey = GlobalKey<FormState>();
  login_controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // child:Image.asset('assets/images/logo.png',fit: BoxFit.cover,) ,
                  child: Lottie.asset('assets/images/animation_llk9n5rz.json'),
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
                        GetBuilder<login_controller>(
                          builder: (controller) => textfield(
                            hint_text: 'Password',
                            iconprifex: Icons.lock_clock_outlined,
                            input_type: TextInputType.visiblePassword,
                            password: controller.ispassword,
                            suffix: controller.ispassword
                                ? Icons.visibility_off_sharp
                                : Icons.visibility,
                            suffixPressd: () {
                              controller.encodePassword();
                              // setState(() {
                              //   isPassword = !isPassword;
                              // });
                            },
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
                            if (loginkey.currentState!.validate()) {
                              controller.onclicklogin().then((value) {
                                print('toooooooooo${controller.token}');
                                shared?.setString('token', controller.token);
                                 // Get.toNamed('/home');
                                Get.to(addwallet());
                              });}

                             /* if (controller.loginstatus == true) {
                                print(token);
                                print('done');
                                Get.to(home_Base());
                              }*/
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
                                Get.to(register(), binding: register_bind());
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
}
