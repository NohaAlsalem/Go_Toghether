import 'dart:io';

import 'package:driverapp/colors.dart';
import 'package:driverapp/models/editprofile_screen/editprofile.dart';
import 'package:driverapp/models/editprofile_screen/editprofile_controller.dart';
import 'package:driverapp/models/profile_screen/profile_controller.dart';
import 'package:driverapp/modelspost/getprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/config/drivertoken.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  profilecontroller controller =
  Get.put<profilecontroller>(profilecontroller());

  late The0 p=controller.productlist;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:
      SafeArea(
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
                      padding: const EdgeInsetsDirectional.only(top:13.0,start: 1),
                    child: Container(
width: 111,
                      height: 110,
                      child: Image.asset('nj'),
                    ),
                    /*  child: CircleAvatar(
                        radius: 60,
                        backgroundColor: secondaryColor,
                        backgroundImage:
                        controller.productlist.imageDriver != null ?
                        FileImage(  !controller.productlist.imageDriver) :
                        null,
                      ),*/
                    ),
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
                            Text(" name   jkjjjjjjjjjjj ${controller.productlist.firstName } ${controller.productlist.lastName }",
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
                  Text("Email: ${controller.productlist.email }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.location_on,color: primaryColor,),

                  ),
                  Text("Address: ${controller.productlist.address }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.phone,color: primaryColor,),

                  ),
                  Text("Phones: ${controller.productlist.phoneOne }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child:  Text(  "${controller.productlist.phoneTwo }",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.date_range_outlined,color: primaryColor,),
                  ),
                  Text("Birth Date: ${controller.productlist.dateOfBirth}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.star,color: primaryColor,),
                  ),
                  Text("number of point: ${controller.productlist.id}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0,left: 110),

                  child: FlatButton.icon(onPressed: (){
                    canceldriver(drivertoken.drivertokenn);
                  },
                      color:primaryColor,
                      icon:Icon(Icons.logout_outlined,color: secondaryColor,),
                      label:Text('Logout',style: TextStyle(color:Colors.white),)),
                ),

                // Padding(
                //     padding: const EdgeInsets.only(top: 15),
                //     child:Row(children: [
                //       MaterialButton(onPressed: (){},
                //         child:Icon(Icons.star,color: primaryColor,),
                //         ),
                //
                //     ],)
                // ),

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



              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        backgroundColor: secondaryColor,
        onPressed: (){
          Get.to(editprofile());
        },
      ),
    );
  }

/*SingleChildScrollView(

        child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container(

               height: 300,
                decoration: BoxDecoration
                  (
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)
                  ,bottomLeft: Radius.circular(30) ),
                  color: Colors.orangeAccent,

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70,right: 10,),
                      child:Transform.translate(offset:Offset (15,40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                            height: 140,

                              width:160,
                              decoration: BoxDecoration

                                (
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/yousef.png'),
                                    fit: BoxFit.cover),

                              ),




                             //  child: Image.asset('assets/images/yousef.png',fit: BoxFit.fill,),

                            ),
                     Column(
                       children:[
                     Padding(
                       padding: const EdgeInsets.only(bottom: 17,left: 12,right:79),
                       child: Text("${controller.productlist.firstName }"
                         +" ${controller.productlist.lastName }",
                         style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,
                        fontSize: 22),),
                     ),
                         Padding(
                           padding: const EdgeInsets.only(bottom: 12,right: 19,),
                           child: Text("Driver",
                             style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,
                                 fontSize: 15),),
                         ),

                          ],
                        ),
                        ],
                        ),
                      ) ,
                    ) ,
                   ],

                ),
              ),
            // headerprofile(),
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
child:Row(children:[

               FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.star,color: Colors.orangeAccent,),
                    label:Text('30 point',style: TextStyle(color:Colors.indigo),)),
  SizedBox(width: 109,),
  FlatButton.icon(onPressed: (){},
      icon:Icon(Icons.trip_origin_rounded,color: Colors.orangeAccent,),
      label:Text('72 Trips',style: TextStyle(color:Colors.indigo),),),
        ],
),
              ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
           child:Row(children: [
             FlatButton.icon(onPressed: (){},
             icon:Icon(Icons.person_add,color: Colors.orangeAccent,),
             label:Text('Email:',style: TextStyle(color:Colors.indigo),),),
             SizedBox(width:10,),
             Text("${controller.productlist.email }",
               style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
           ],)
        ),
              Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child:Row(children: [
                    FlatButton.icon(onPressed: (){},
                      icon:Icon(Icons.location_on,color: Colors.orangeAccent,),
                      label:Text('Adrees:',style: TextStyle(color:Colors.indigo),),),
                    SizedBox(width:10,),
                    Text("${controller.productlist.address }",
                      style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                  ],)
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child:Row(children: [
                    FlatButton.icon(onPressed: (){},
                      icon:Icon(Icons.phone,color: Colors.orangeAccent,),
                      label:Text('contact numbers:',style: TextStyle(color:Colors.indigo),),),
                    SizedBox(width:10,),
                    Text("${controller.productlist.phoneOne }",
                      style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                  ],)
              ),
        Padding(
          padding: const EdgeInsets.only(left: 180.0),
            child:  Text("${controller.productlist.phoneTwo }",
                style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),),
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child:Row(children: [
                    FlatButton.icon(onPressed: (){},
                      icon:Icon(Icons.phone,color: Colors.orangeAccent,),
                      label:Text('date of birth :',style: TextStyle(color:Colors.indigo),),),
                    SizedBox(width:10,),
                    Text("${controller.productlist.dateOfBirth }",
                      style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                  ],)
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0,left: 110),

                child: FlatButton.icon(onPressed: (){
                  canceldriver(drivertoken.drivertokenn);
                },
                    color: Colors.indigo,
                    icon:Icon(Icons.logout_outlined,color: Colors.orangeAccent,),
                    label:Text('Logout',style: TextStyle(color:Colors.white),)),
              ),
             ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
child: Icon(Icons.edit),
        backgroundColor: Colors.orangeAccent,
        onPressed: (){
          Get.to(editprofile());
        },
      ),
    );
  }*/

  Future<void> canceldriver(String token )async {

    var url=Uri.parse(serverconfig.domainserver+serverconfig.canceldriver+"${drivertoken.iddriver}");
    print(url);
    print(token);
    var response = await http.delete(
      url,
      headers: {
        'Accept': 'application/json',
        //  'Authorization': 'Bearer 21|arShp5mOJ5EpYpLusis2CbfiJoOl7HFmjpXVXnAx',
        'Authorization': 'Bearer $token',
      },


    );
    print(response.body);
    print(response.statusCode);

  }

}
