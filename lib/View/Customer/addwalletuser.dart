
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:toproject2/Network/APIs.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/View/Customer/Home/office_screen.dart';
import 'package:toproject2/View/Shared/TextField.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/Shared/container.dart';

class addwallet extends StatelessWidget {



  var loginkey = GlobalKey<FormState>();

var amount ='';
var code='';
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
                          'add wallet',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 30,
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
                            hint_text: 'code',
                            // controller: controller.email,
                            input_type: TextInputType.text,
                            onchange: (value) {
code=value;
print(code);
                            },
                            iconprifex: Icons.code,
                            validate: (String v) {
                              if (((v == null || v.isEmpty)

                                  )) {
                                return 'pleas enter your code';
                              }
                            }),
                        SizedBox(
                          height: 25,
                        ),
                       textfield(
                            hint_text: 'amount',
                            iconprifex: Icons.money_off_rounded,
                            input_type: TextInputType.visiblePassword,

                            onchange: (value) {
amount=value;
print(amount);
                            },
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'amount must not be empty';
                              }


                              return null;
                            },
                          ),

                        SizedBox(
                          height: 30,
                        ),
                        shapecont(
                            text: 'add',
                            color: secondaryColor,
                            fun: () {
                              addwaleet(Auth_Middel.token!).then((value) =>  Get.toNamed('/home'));
                              if (loginkey.currentState!.validate()) {
                              }
                            }),
                        SizedBox(
                          height: 30,
                        ),

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
  var url2 = Uri.parse(
      ServerConfig.domainserver + ServerConfig.addwallet);
  Future<bool> addwaleet(String token) async {
    print(url2);

    var response = await http.post(
      url2,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {

  'code':code,
        'amount':amount,

      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
    // if(response.statusCode==200){
    var responsejson = jsonDecode(response.body);
    // token=responsejson['token'];
    // iddriver=responsejson['driver']['id'];
    // message=responsejson['success'];


    return true;
  }

}

