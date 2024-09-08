


import 'dart:io';

import 'package:driverapp/colors.dart';
import 'package:driverapp/components/container.dart';
import 'package:driverapp/components/textfeild.dart';
import 'package:driverapp/models/addcar_screen/addcar.dart';
import 'package:driverapp/models/addcar_screen/addcar_controller.dart';
import 'package:driverapp/models/addcar_screen/addcar_serves.dart';
import 'package:driverapp/models/register_screen/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';


class choice extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
   return Scaffold(

      body:

      SafeArea(
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
                SizedBox(height: 42,),
                Container(

                 // width: 300,
                  child: Image.asset('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٦٣٠.jpg',fit: BoxFit.cover,),
                ),

                SizedBox(height: 90,),

                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: Text("if you want to register with a car?",
                    style: TextStyle(color: primaryColor,fontSize: 17,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: RaisedButton(
                    color: secondaryColor,
                    child: Text("click here", style: TextStyle(color: primaryColor,fontSize: 17,
                        fontWeight: FontWeight.bold),),
                      onPressed: (){
                    Get.to(addcar());
                  }),
                ),
                SizedBox(height: 45,),
            //    SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Text("if you want to register without a car?",
                    style: TextStyle(color: primaryColor,fontSize: 17,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 22,),
                Padding(
                  padding: const EdgeInsets.only(left: 165.0),
                  child: RaisedButton(
                      color: secondaryColor,
                      child: Text("click here", style: TextStyle(color: primaryColor,fontSize: 17,
                          fontWeight: FontWeight.bold),),
                      onPressed: (){
                        Get.to(register());
                      }),
                ),
              ],
            ),
          ),

        ),


    );

  }


}
