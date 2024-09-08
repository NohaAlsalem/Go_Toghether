import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Customer/bookinternal.dart';
import 'package:toproject2/View/Shared/common_Color.dart';


import '../../Controller/Customer_Controlers/details_car_controller.dart';

class DetailcarScreen extends StatefulWidget {
  // final Hotel? hotels;

  @override
  State<DetailcarScreen> createState() => _DetailcarScreenState();
}

class _DetailcarScreenState extends State<DetailcarScreen> {
  cardetailsusercontroller controller =
      Get.put<cardetailsusercontroller>(cardetailsusercontroller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body : SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  height: 300,
                  // height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Image(
                      image: AssetImage('assets/images/IMG_٢٠٢٣٠٨١٤_٠٨٤٩٣٧.jpg'),
                      fit: BoxFit.cover,
                    ),
                  )),

            ],),
          // SizedBox(
          //   height: 5,
          // ),


          Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Row(children: [
                MaterialButton(onPressed: (){},
                  child:Icon(Icons.car_rental,color: secondaryColor,),
                  // label:Text('type_car:',style: TextStyle(color:primaryColor),),),
                ), SizedBox(width:10,),
                Text("type: "+"${controller.detailscar.type}" ,
                  style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
              ],)
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Row(children: [
                MaterialButton(onPressed: (){},
                  child:Icon(Icons.car_rental,color: secondaryColor,),
                )  ,// label:Text('color:',style: TextStyle(color:primaryColor),),),
                SizedBox(width:10,),
                Text('color: '+"${controller.detailscar.color}",
                  style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
              ],)
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Row(children: [
                MaterialButton(onPressed: (){},
                  child:Icon(Icons.money_off_rounded,color: secondaryColor,),
                  // label:Text('cost:',style: TextStyle(color:primaryColor),),),
             ),   SizedBox(width:10,),
                Text('cost: '+"${controller.detailscar.car[0].cost}",
                  style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
              ],)
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Row(children: [
                MaterialButton(onPressed: (){},
                  child:Icon(Icons.person_add_alt_1,color: secondaryColor,),
    ), // label:Text('driver name:',style: TextStyle(color:primaryColor),),),
                SizedBox(width:10,),
                Text(
                  'driver name :  '+"${controller.detailscar.driverfirst}"+
                  "${controller.detailscar.driverlast}",
                  style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
              ],)
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Row(children: [
                MaterialButton(onPressed: (){},
                  child:Icon(Icons.car_rental,color: secondaryColor,),
                ),     // label:Text('car number:',style: TextStyle(color:primaryColor),),),
                SizedBox(width:10,),
                Text('number car:  '+"${controller.detailscar.car[0].number}",
                  style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
              ],)
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:130.0,bottom: 12),
            child:   MaterialButton(

                child: Text("Book now ",style: TextStyle(color: secondaryColor,fontSize: 20),),

                color: primaryColor,

                onPressed: (){
                  Get.to(internalReservation());
                }





            ),
          )
/*
Column(
  children: [
Padding(
  padding: const EdgeInsets.only(left:16.0),
  child:   Text("if you need start the trip ",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold

  ,fontSize: 15),),

),
    SizedBox(height: 12,),
    Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(13)),
      child: GestureDetector(
        onTap: () {

          starttrips(drivertoken.drivertokenn);

        },
        child: Row(
          children:[
            SizedBox(width: 10,),
            Icon(
              Icons.check_circle_outline,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 4,),
            Text("Start",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    ),
    SizedBox(height: 15,),
    SizedBox(width: 15,),
    Padding(
      padding: const EdgeInsets.only(left:16.0),
      child:   Text("if you need end the trip ",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold

          ,fontSize: 15),),

    ),
    SizedBox(height: 12,),
    Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(13)),
      child: GestureDetector(
        onTap: () {

          finishtrips(drivertoken.drivertokenn);

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
            Text("End",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    ),
    SizedBox(width: 15,),
    SizedBox(height: 15,),
    Padding(
      padding: const EdgeInsets.only(left:16.0),
      child:   Text("if you need accept the trip ",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold

          ,fontSize: 15),),

    ),
    SizedBox(height: 10,),
    Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(13)),
      child: GestureDetector(
        onTap: () {

          acceptresv(drivertoken.drivertokenn);

        },
        child: Row(
          children:[
            SizedBox(width: 10,),
            Icon(
              Icons.check_circle_outline,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(width: 4,),
            Text("accept",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    ),
  ],
),*/

        ],
      ),
        ),
    );
    // ]));
  }

  TextEditingController comController = TextEditingController();
}
