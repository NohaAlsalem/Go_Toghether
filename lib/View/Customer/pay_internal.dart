
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

import '../../Network/APIs.dart';
import '../Shared/TextField.dart';
import '../Shared/container.dart';
import 'Home/office_screen.dart';
class payinternal extends StatelessWidget {



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
                flex: 1,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'pay',
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
                            hint_text: 'cost',
                            // controller: controller.email,
                            input_type: TextInputType.text,
                            onchange: (value) {
                              code=value;
                            },
                            iconprifex: Icons.code,
                            validate: (String v) {
                              if (((v == null || v.isEmpty)

                              )) {
                                return 'pleas enter your cost';
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
                            text: 'pay',
                            color: secondaryColor,
                            fun: () {
                              addwaleet(Auth_Middel.token!);
                              Get.to(officeScreen());
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
      ServerConfig.domainserver + ServerConfig.payinternal);


  Future<bool> addwaleet(String token) async {
    print(url2);

    var response = await http.post(
      url2,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {

        'cost':code,
        'office_id':'1',

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

