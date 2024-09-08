import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/favourite_controller.dart';
import '../../../Controller/Customer_Controlers/profile_user_controller.dart';
import '../../../Network/APIs.dart';
import '../../../Network/MiddelWare/Auth_middel.dart';

class profilepage extends StatelessWidget {
  profilepage({Key? key}) : super(key: key);

var numberstar;

  profilecontroller controller =
  Get.put<profilecontroller>(profilecontroller());

  favouritecontroller controller1 =
  Get.put<favouritecontroller>(favouritecontroller());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:SafeArea(
        child: Container(
        height: double.infinity,
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
          child: SingleChildScrollView(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top:10.0),
                      child: Container(
                        child:controller.profile.info.profileImage != null ? Image(image: NetworkImage('${controller.profile.info.profileImage!}'),) : Image(image: AssetImage('assets/images/logo.png')),
                       decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(100)
                      ),
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            // pickImage().then((value) {
                            // print(value);
                            // controller.profileImage=image;
                          },
                          // onPressed: () => pickImage(ImageSource.camera),
                         child: Row(children: [
                           SizedBox(width:10,),
                           Text("here name ${controller.profile.info.firstname } ${controller.profile.info.lastname }",
                             style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                         ],),
                        ),
                      ],
                    ),
                  ],
                ),

SizedBox(height: 60,),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.email_sharp,color: primaryColor,),
                  ),
                  Text("Email: ${controller.profile.info.email }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.location_on,color: primaryColor,),

                  ),
                  Text("Address: ${controller.profile.info.address }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.phone,color: primaryColor,),

                  ),
                  Text("Phones: ${controller.profile.info.phoneTwo }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child:  Text(  "${controller.profile.info.phoneTwo }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.date_range_outlined,color: primaryColor,),
                    ),
                  Text("Birth Date: ${controller.profile.info.dateOfBirth}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),

                // Padding(
                //     padding: const EdgeInsets.only(top: 15),
                //     child:Row(children: [
                //       MaterialButton(onPressed: (){},
                //         child:Icon(Icons.star,color: primaryColor,),
                //         ),
                //
                //     ],)
                // ),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.star_border,color: primaryColor,),
                    ),

                  Text("Favorite ${controller1.favourtie.favorite.name}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                // Padding(
                //     padding: const EdgeInsets.only(top: 15),
                //     child:Row(children: [
                //       MaterialButton(onPressed: (){},
                //         child:Icon(Icons.star_border_outlined,color: primaryColor,),
                //         ),
                //       SizedBox(width:10,),
                //       Text("${controller1.favourtie.favorite.description}",
                //         style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                //     ],)
                // ),

                SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8,bottom: 9.0),
              child: Text('Do You Need Chabge Your Prefers? ',style: TextStyle(color:secondaryColor,fontSize: 15
              ,fontWeight: FontWeight.bold),),
            ),
                SizedBox(height: 22,),

              ],
            ),
          ),
        ),
      ),
bottomNavigationBar:    Container(
  color: Colors.white10,
  width: MediaQuery.of(context).size.width,
  child: TextFormField(
    onChanged: (value) {
      numberstar = value ;

    },
    decoration: InputDecoration(
      hintText: 'Enter number stars for your prefer',
      hintStyle:
      TextStyle(color: primaryColor, fontSize: 16),
      suffixIcon: IconButton(
        icon: Icon(
          Icons.send,
          color: secondaryColor,
        ),
        onPressed: () {
          changefavourite(Auth_Middel.token!);
        },
      ),
      contentPadding: EdgeInsets.all(5),
    ),
    style: TextStyle(color: primaryColor),
  ),
),
    );
  }

var url1=Uri.parse(ServerConfig.domainserver+ServerConfig.updatefavourite);

var error1='';

var token1='';

var message6;

Future<bool> changefavourite(String token)async{
  print(url1);

  var response= await http.post(
    url1,
    headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    },
    body: {

      'number':numberstar,

    },
  );
  print(response.statusCode);
  print(response.body);
  var iddriver;
  // if(response.statusCode==200){
  var responsejson=jsonDecode(response.body);
  token=responsejson['token'];
  // iddriver=responsejson['driver']['id'];
  // message=responsejson['success'];

  Auth_Middel.token!=token;
  print(Auth_Middel.token!);

  return true;
}
}
