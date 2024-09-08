
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:toproject2/View/Customer/bookexternal.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../Controller/Customer_Controlers/External_Controlller/details_external_trips_user_controller.dart';
class externalDetailtripScreen extends StatelessWidget {
  // final Hotel? hotels;
  externaltripsdetailsusercontroller controller =
  Get.put<externaltripsdetailsusercontroller>(externaltripsdetailsusercontroller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor:secondaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 1,
              child: Container(
                width: double.infinity,
                  child: Lottie.asset('assets/images/animation_llcsxm1y.json'))),
          // Stack(
          //   children: [
          //     Container(
          //         height: 150,
          //         width: 150,
          //         // height: MediaQuery.of(context).size.height,
          //         decoration: BoxDecoration(boxShadow: [
          //           BoxShadow(
          //               color: Colors.white,
          //               offset: Offset(0.0, 2.0),
          //               blurRadius: 6)
          //         ]),
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 20.0),
          //           child:Icon(Icons.car_rental,size: 50,),
          //         )),
          //
          //   ],),
          // SizedBox(
          //   height: 5,
          // ),

          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.timer_rounded,color:secondaryColor,),
                      // label:Text('travelTime:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('travelTime :  '+"${controller.detailstrips.travelTime}",
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.money_off_rounded,color:secondaryColor,),
                      // label:Text('cost:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('cost :   '+ "${controller.detailstrips.cost}",
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.trip_origin_rounded,color:secondaryColor,),
                      // label:Text('officeName:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('officeName:  '+"${controller.detailstrips.officeName}",
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.location_on_rounded,color:secondaryColor,),
                      // label:Text('officeLocation:',style: TextStyle(color:primaryColor),),
                    ),
                    Text('officeLocation:  '+"${controller.detailstrips.officeLocation}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.person_add,color:secondaryColor,),
                      // label:Text('number of person:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('numberOfPersons:  '+"${controller.detailstrips.numberOfPersons}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.timer,color:secondaryColor,),
                      // label:Text('lastTimePaid:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('lastTimePaid:  '+"${controller.detailstrips.lastTimePaid}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.monetization_on_rounded,color:secondaryColor,),
                      // label:Text('payment type:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('paymentAmount:   '+"${controller.detailstrips.paymentAmount}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.money_off_rounded,color:secondaryColor,),
                      // label:Text('payment amount:',style: TextStyle(color:primaryColor),)
                    ),

                    Text('paymentAmount:  '+"${controller.detailstrips.paymentAmount}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.phone,color:secondaryColor,),
                      // label:Text('phone driver:',style: TextStyle(color:primaryColor),),
                    ),
                    Text('driverPhones:  '+"${controller.detailstrips.driverPhoneOne}"+"\n"+
                        "${controller.detailstrips.driverPhoneTwo}"   ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Row(children: [
                    MaterialButton(onPressed: (){},
                      child:Icon(Icons.person_add_alt_1,color:secondaryColor,),
                      // label:Text('driver name:',style: TextStyle(color:primaryColor),),
                    ),

                    Text('driverName:  '+"${controller.detailstrips.driverName}" ,
                      style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                  ],),
                  Positioned(
                      bottom: 0,
                      height: 60,
                      child: Container(
                        color: Colors.white10,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          onChanged: (value) {
                            controller.text = value
                            ;
                          },
                          decoration: InputDecoration(
                            hintText: 'write your complaint',
                            hintStyle:
                            TextStyle(color: primaryColor, fontSize: 16),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.send,
                                color:secondaryColor,
                              ),
                              onPressed: () {
                                onclick();
                              },
                            ),
                            contentPadding: EdgeInsets.all(5),
                          ),
                          style: TextStyle(color: primaryColor),
                        ),
                      )),
                ],
              ),
            ),
          ),


        ],
      ),

    );
    // ]));
  }

  TextEditingController comController = TextEditingController();

 /* void  onclick() async{
    // EasyLoading.show(status: 'loading');
    await  controller.onclicklogin();

  }*/
  void  onclick() async{
    // EasyLoading.show(status: 'loading');
    await  controller.onclick();

  }
}

