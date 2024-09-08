import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../Controller/Customer_Controlers/trips_user_details_controller.dart';
import '../../Network/APIs.dart';
import '../../Network/MiddelWare/Auth_middel.dart';

class DetailtripScreen extends StatelessWidget {
  // final Hotel? hotels;

  tripsdetailsusercontroller controller =
      Get.put<tripsdetailsusercontroller>(tripsdetailsusercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: secondaryColor,

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                child:  Expanded(flex: 1,
                      child: Container(
                          width: double.infinity,
                          child: Lottie.asset('assets/images/animation_llcsxm1y.json'))),),

              ],),
            // SizedBox(
            //   height: 5,
            // ),

            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.location_on,color: secondaryColor,),
                    // label:Text('Location:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('location:  ',//+"${controller.detailstrips[0].location}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.location_on,color: secondaryColor,),
                    // label:Text('Goal:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('goal:  ',//+"${controller.detailstrips[0].goal}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.timer,color: secondaryColor,),
                    // label:Text('Time:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('travelTime:  ',//+"${controller.detailstrips[0].travelTime}",
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),

            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.date_range,color: secondaryColor,),
                    // label:Text('Date:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('date:  ',//+"${controller.detailstrips[0].date}" ,
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.person_add,color: secondaryColor,),
                    // label:Text('driver name:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('Driver Name:  ',//"${controller.detailstrips[0].driver.firstName}" +
                    //"${controller.detailstrips[0].driver.lastName}" ,
                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.person_add,color: secondaryColor,),
                    // label:Text('driver email:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('Driver Email:  ',//"${controller.detailstrips[0].driver.email}" ,

                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  MaterialButton(onPressed: (){},
                    child:Icon(Icons.phone,color: secondaryColor,),
                    // label:Text('driver number phone:',style: TextStyle(color:primaryColor),),
                  ),
                  SizedBox(width:10,),
                  Text('Driver phones',//"${controller.detailstrips[0].driver.phoneOne}"+"\n"+
                    //"${controller.detailstrips[0].driver.phoneTwo}"   ,

                    style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),
                ],)
            ),
            // SizedBox(height: 20,),
            Row(
              children: [
                  Spacer(flex: 1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(onPressed: (){
                    delete(Auth_Middel.token!,controller.detailstrips[0].id);
                  },
                    color: primaryColor,
                    child:Text('Cancel Reservation',style: TextStyle(color: secondaryColor),),
                    // label:Text('Cancel of reservation',style: TextStyle(color:Colors.white,fontSize: 15),)
                  ),
                ),
              ],
            ),
            SizedBox(height: 22,),
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
                          color: secondaryColor,
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
            Padding(
              padding: const EdgeInsets.only(top: 35.0,left: 80,bottom: 12),

              child: Column(
                children:[
                  SizedBox(width: 70,),


                ],
              ),
            ),


          ],
        ),
      ),

    );
    // ]));
  }

  TextEditingController comController = TextEditingController();

  void onclick() async {
    // EasyLoading.show(status: 'loading');
    await controller.onclicklogin();
  }

  Future<void> delete(String token, int id) async {
    var url = Uri.parse(ServerConfig.domainserver +
        ServerConfig.deleteresv +
        '$id' +
        ServerConfig.deleteresv1);
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
