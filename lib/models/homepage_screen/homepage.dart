import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/models/finishtrip_screen/finishtrp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class home extends StatefulWidget {


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.withOpacity(0.3),
      //  title: Icon(FontAwesomeIcons.twitter,color: maindarkcolor,size: 50,),
        actions: [
          Container(
            height: 60,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(36)),
            child: GestureDetector(
              onTap: () {

                Get.to(finishtripsScreen());

              },
              child: Row(
                children:[
                  SizedBox(width: 10,),
                  Icon(
                    Icons.close_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 4,),
                  Text("finish",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
           child: Icon(Icons.notifications,color: secondaryColor,size: 35,),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
    Padding(
    padding: const EdgeInsets.only(top: 29.0,left: 25,right: 29),
    child: Container(

    height: 50,
    margin: EdgeInsets.only(bottom: 10),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),

    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(
    height: 70,
    width: 120,
    decoration: BoxDecoration(
     color: secondaryColor,
    borderRadius: BorderRadius.circular(10)),
    child: GestureDetector(
    onTap: () {

availabledriverornot(drivertoken.drivertokenn);

    },
    child: Row(
      children:[
        SizedBox(width: 10,),
        Icon(
      Icons.check,
      size: 30,
      color:primaryColor,
      ),
        SizedBox(width: 4,),
        Text("available",style: TextStyle(color:primaryColor,fontWeight: FontWeight.w500),),
      ],
    ),
    ),
    ),
      Container(
        height: 70,
        width: 120,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: GestureDetector(
          onTap: () {

         //   canceldriver(drivertoken.drivertokenn);

          },
          child: Row(
            children:[
              SizedBox(width: 10,),
              Icon(
                Icons.close,
                size: 30,
                color:primaryColor,
              ),
              SizedBox(width: 4,),
              Text("Unavailable",style: TextStyle(color:primaryColor,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
      ),
            ],
          ),
        ),
      ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  height: 230,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
width:double.infinity,
                        color:primaryColor,
                        child: Column(
                          children: [
                            SizedBox(height: 12,),
                            Text("12/2/2023",style: TextStyle(
                              color: Colors.white,fontSize: 20,

                            ),),
                            SizedBox(height: 12,),
                            Text("12:15",style: TextStyle(
                              color: Colors.white,fontSize: 20,

                            ),),
                            SizedBox(height: 12,),

                            Text("Goal is daraa",style: TextStyle(
                              color: Colors.white,fontSize: 20,

                            ),),
                          ],
                        ),
                      ),

    SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
                  ],
                ),
              ),

      ),

    );
  }






  Future<void> availabledriverornot(String token )async {

    var url=Uri.parse(serverconfig.domainserver+serverconfig.availabledriverorfnot);
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


}
