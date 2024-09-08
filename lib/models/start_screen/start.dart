import 'package:driverapp/colors.dart';
import 'package:driverapp/components/container.dart';
import 'package:driverapp/models/choiceregister/choice_register.dart';
import 'package:driverapp/models/login_screen/login.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 350,
                child: Image.asset('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٦٣٠.jpg',fit: BoxFit.cover,),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 27,right: 19),
                child: Text('   Discover the best transportation office '
                    'and job     \t\t\t\t\t\t\t\t\t\t\t opportunities with our application',
                  style: TextStyle(fontWeight: FontWeight.bold,color:primaryColor),),
              ),
              SizedBox(height: 35,),
              shapecont(text: 'Login',color:secondaryColor,fun: (){
                Get.to(login());
              }, ),
              SizedBox(height: 35,),
              shapecont(text: 'Create an Acount',color:primaryColor,fun: (){
                Get.to(choice());
              }, ),
            ],
          ),
        ),
      ),
    );
  }
}
