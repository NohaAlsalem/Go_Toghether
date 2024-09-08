
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:toproject2/View/Customer/bookexternal.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/detailsextrernaltripsnew/externaldetailstripcontroller.dart';


class externalDetailtripScreennew extends StatefulWidget {
  // final Hotel? hotels;


  @override
  State<externalDetailtripScreennew> createState() => _externalDetailtripScreenStatenew();
}

class _externalDetailtripScreenStatenew extends State<externalDetailtripScreennew> {


  externaldetailstripnewcontroller controller =
  Get.put<externaldetailstripnewcontroller>(externaldetailstripnewcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:secondaryColor,

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 150,
                    width: 150,
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6)
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child:Icon(Icons.car_rental,size: 50,),
                    )),

              ],),
            // SizedBox(
            //   height: 5,
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0,left: 190,bottom: 12),

              child: Column(
                children:[
                  SizedBox(width: 70,),
                  MaterialButton(onPressed: (){
                    Get.to(externalReservation());
                  },
                      color: primaryColor,
                      child:Text('Book now!',style: TextStyle(color:Colors.white,fontSize: 15),)),
                     // label:Text('Book now!',style: TextStyle(color:Colors.white,fontSize: 15),)),

                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('Office name:',style: TextStyle(color:primaryColor),),),
                   // label:Text('Office name:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.nameOffice}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('location:',style: TextStyle(color:primaryColor),),),
                    //label:Text('location:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.travel[0].location}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('date:',style: TextStyle(color:primaryColor),),),
                  //  label:Text('date:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.travel[0].date}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('cost:',style: TextStyle(color:primaryColor),),),
                   // label:Text('cost:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.travel[0].cost}" ,
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('lastTimePaid:',style: TextStyle(color:primaryColor),),),
                   // label:Text('lastTimePaid:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.travel[0].lastTimePaid}" ,
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Text('destnation:',style: TextStyle(color:primaryColor),),),
                    //label:Text('destnation:',style: TextStyle(color:primaryColor),),),
                  SizedBox(width:10,),
                  Text("${controller.detailstrips.travel[0].destnation}" ,
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),




          ],
        ),
      ),

    );
    // ]));
  }


  TextEditingController comController = TextEditingController();

  /* void  onclick() async{
    // EasyLoading.show(status: 'loading');
    await  controller.onclicklogin();

  }*/
}

