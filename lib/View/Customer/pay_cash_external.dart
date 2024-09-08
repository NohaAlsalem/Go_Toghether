
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart'as http;
import 'package:toproject2/Controller/Customer_Controlers/pay_controller.dart';
import 'package:toproject2/Network/APIs.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/Network/MiddelWare/user_con.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
class paycashextrrnal extends StatelessWidget {
  paycontroller controller =
  Get.put<paycontroller>(paycontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text('Booking'),
      //   backgroundColor: Colors.blue[300],
      //   centerTitle: true,
      // ),
      body:
      //Padding(
      //   padding: const EdgeInsets.all(28.0),
      //   child: Text(
      //     'Please fill the\n           field below',
      //     style: TextStyle(fontSize: 20, color: Colors.black),
      //   ),
      // ),
      Container(
        width: double.infinity,
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
        child:
        Column(children: [

          //    Text("${controller.allseats[1].numberOfSeat}"),

          Padding(
            padding: const EdgeInsets.only(left: 10, top: 200.0),
            child: MaterialButton(
              color: primaryColor,
              onPressed: () {
                paycash(Auth_Middel.token!);
              },


              child: Text(
                'pay : cash',
                style: TextStyle(color: secondaryColor,
                    fontSize: 16),


              ),
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 200.0),
         child: Text(
            'if you are sure that you want to book now,click confirm',
            style: TextStyle(color: primaryColor,
                fontSize: 16,fontWeight: FontWeight.bold),


          ),),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20.0),
            child: MaterialButton(
              color: primaryColor,
              onPressed: () {
                confirmreservation(Auth_Middel.token!);
              },


              child: Text(
                'confirm reservation',
                style: TextStyle(color: secondaryColor,
                    fontSize: 16),


              ),
            ),
          ),
        ],
        ),

      ),


    );

  }
  Future<void> confirmreservation(String token )async {

    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.confirmreservation+'${usertoken.reservationexternalidf}'+
    ServerConfig.confirmreservation22+"${usertoken.cashpayid}"+ServerConfig.confirmreservation33);
    print(url);
    print(token);
    var response = await http.get(
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
  Future<void> paycash(String token )async {

    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.payexternal);
    print(url);
    print(token);
    var response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        //  'Authorization': 'Bearer 21|arShp5mOJ5EpYpLusis2CbfiJoOl7HFmjpXVXnAx',
        'Authorization': 'Bearer $token',
      },

      body: {
        'typePayment': 'cash',
      },
    );
    print(response.body);
    print(response.statusCode);
    var responsejson=jsonDecode(response.body);
    usertoken.cashpayid=responsejson[" Payment information"]["id"];
    print(usertoken.cashpayid);

  }

}
