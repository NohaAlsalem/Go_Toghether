import 'dart:convert';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:toproject2/Network/MiddelWare/user_con.dart';
import 'package:toproject2/View/Customer/pay.dart';
import 'package:toproject2/View/Customer/pay_cash_external.dart';

import '../../Controller/Customer_Controlers/External_Controlller/bookexternal_controller.dart';
import '../../Network/APIs.dart';
import '../../Network/MiddelWare/Auth_middel.dart';
import '../Shared/common_Color.dart';

class externalReservation extends StatelessWidget {
   externalReservation({Key? key}) : super(key: key);
   List<String> seats=[];
   var numberseats = 0;

   bool status = false;
   bookexternalcontroller controller =
   Get.put<bookexternalcontroller>(bookexternalcontroller());
   TextEditingController dateCtl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        actions: [
          IconButton(

              onPressed: () {
                //Get.to(Datasearch());
                //   showSearch(context: context, delegate: Datahotelsearch());
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),

                  child: Text(
                    ' The available seats for this trip ',
                    style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryColor),
                  ),
                ),

                SizedBox(height: 40,),
                Container(
                  height: 250,
                  child:  GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 4,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 12,




                    // Generate 100 widgets that display their index in the List.
                    children: List.generate(controller.allseats.length, (index) {
                      return GestureDetector(

                        onTap: () async {
                          numberseats = controller.allseats[index].id;
                          print("jj$numberseats");
                          //   numberseats=controller.allseats[index].id;
                          cnfirmseats(Auth_Middel.token!);
                          status=await cnfirmseats(Auth_Middel.token!);
                          print(status);
                          if(status==true){
                            //  seats.add(numberseats);
                            EasyLoading.show(status: 'loading');
                            EasyLoading.showSuccess('the seat available',duration:Duration (seconds:4));
                          }
                          if(status==false){
                            //seats.add(numberseats);

                            print(seats);
                            EasyLoading.show(status: 'loading');
                            EasyLoading.showError('the seat not available'
                                ,duration:Duration (seconds:4));
                          }
                        },
                        child: Container(

                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  primaryColor.withOpacity(0.4),
                                  Colors.white,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),

                            child: Center(
                                child: Text("${controller.allseats[index].id}",
                                  style: TextStyle(color: primaryColor,
                                      fontWeight: FontWeight.bold),
                                ))),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 50,),
                Text("Now you can reservation after confirm from seats"
                  , style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                MaterialButton(
                    color:secondaryColor,
                    child: Text("Reservation", style: TextStyle(
                        color: Colors.white, fontSize: 19
                    ),),
                    onPressed: () {
                      reservation(Auth_Middel.token!);
                    }),
                SizedBox(height: 20,),
                MaterialButton(
                    color:secondaryColor,
                    child: Text("pay", style: TextStyle(
                        color: Colors.white, fontSize: 19
                    ),),
                    onPressed: () {
                      showDialog<void>(

                        builder: (BuildContext context) {
                          return AlertDialog(
                              content:SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextButton( child: Text("cash", style: TextStyle(
                                        color: primaryColor, fontSize: 19,fontWeight:
                                    FontWeight.bold
                                    ),),
                                      onPressed: (){
                                        Get.to(paycashextrrnal());
                                      },),
                                    TextButton( child: Text("electrony", style: TextStyle(
                                        color: primaryColor, fontSize: 19
                                        ,fontWeight:
                                    FontWeight.bold
                                    ),),
                                      onPressed: (){
                                        Get.to(pay());
                                      },),
                                  ],
                                ),
                              )

                          );
                        }, context: context,



                      );
                    }),
              ],

            ),
          ),
        ),
      );}

   var url1 = Uri.parse(
       ServerConfig.domainserver + ServerConfig.confirmavailableseats+"${usertoken.externaltripid}"+ServerConfig.confirmavailableseats22);
   var error1 = '';
   var token1 = '';
   var message6;

   Future<bool> cnfirmseats(String token) async {
     print(url1);

     var response = await http.post(
       url1,
       headers: {
         'Accept': 'application/json',
         'Authorization': 'Bearer $token',
       },
       body: {

         'seats[]': '$numberseats',

       },
     );
     print(response.statusCode);
     print(response.body);
     var iddriver;
     if (response.statusCode == 200) {
       var responsejson = jsonDecode(response.body);
       // token=responsejson['token'];
       // iddriver=responsejson['driver']['id'];
       // message=responsejson['success'];


       return true;
     }
     else
       return false;
   }



   var url2 = Uri.parse(
       ServerConfig.domainserver + ServerConfig.reservationexternal+'${usertoken.externaltripid}'+ServerConfig.reservationexternal22);


   Future<bool> reservation(String token) async {
     print(url2);
     print(numberseats);
     var response = await http.post(
       url2,
       headers: {
         'Accept': 'application/json',
         'Authorization': 'Bearer $token',
       },
       body: {

         'seats[]':'$numberseats' ,
         'userAccept': 'true',
       },
     );
     print(response.statusCode);
     print(response.body);

     var iddriver;
     // if(response.statusCode==200){
     var responsejson = jsonDecode(response.body);
     usertoken.reservationexternalidf=responsejson["information reservation :"]["id"];
     print("ghvjhb");
     print(usertoken.reservationexternalidf);
     // token=responsejson['token'];
     // iddriver=responsejson['driver']['id'];
     // message=responsejson['success'];


     return true;
   }

  }



