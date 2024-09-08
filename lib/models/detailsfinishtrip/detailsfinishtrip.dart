
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/colors.dart';
import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/models/details_screen/details_controller.dart';
import 'package:driverapp/models/details_screen/detailstripsserves.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailfinishScreen extends StatefulWidget {
  // final Hotel? hotels;


  @override
  State<DetailfinishScreen> createState() => _DetailfinishScreenState();
}

class _DetailfinishScreenState extends State<DetailfinishScreen> {

  detailscontroller controller =
  Get.put<detailscontroller>(detailscontroller());

  tripdetailsserves serves = tripdetailsserves();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:secondaryColor,
        /*  actions: [
        PopupMenuButton(
        color: Colors.white,
        child:Padding(
          padding: EdgeInsets.only(right: 10),
          child:Icon(Icons.more_vert,color: Colors.white,),
        ),
        itemBuilder: (context) =>[
          PopupMenuItem(
            child: Text('start trip',style: TextStyle(color: primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),
            value: 'start',
          ),
          PopupMenuItem(
            child: Text('end trip',style: TextStyle(color: primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),
            value: 'end',
          ),
          PopupMenuItem(
            child: Text('accept trip',style: TextStyle(color: primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),
            value: 'accept',
          ),
          PopupMenuItem(
            child: Text('destory trip',style: TextStyle(color: primaryColor,fontSize: 15,fontWeight: FontWeight.bold),),
            value: 'destory',
          ),
        ],
        onSelected:(val){
          if(val=='start'){
         starttrips(drivertoken.drivertokenn);
          }

          else{
            finishtrips(drivertoken.drivertokenn);
          }
        },
      ),
      ],*/
      ),
      body:
      Container(
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
        //  color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(

              height: 222,

              child:  Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child:Image.asset('assets/images/IMG_٢٠٢٣٠٦٠١_١٥٤٠٣٢.jpg',fit: BoxFit.cover,) ,
                  //  child: Lottie.asset('assets/images/animation_llk9n5rz.json'),
                ),
              ),
            ),

            SizedBox(height: 22,),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.person_add_alt_1,
                    color: secondaryColor,
                  ),
                ),
                Text(
                  'Location: jjjj',//   "${controller.productlist.location}"
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.money_off_rounded,
                    color: secondaryColor,
                  ),
                ),
                Text(
                  'Cost: 50 '
                      '\$', //"${controller.productlist.id}""\$" ,
                  style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.location_on_rounded,
                    color: secondaryColor,
                  ),
                ),
                Text(
                  'goal : daraa ',//"${controller.productlist.goal}",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.timer_rounded,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      'Time : 6:30', //"${controller.productlist.travelTime}",,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.date_range_outlined,
                        color: secondaryColor,
                      ),
                    ),
                    Text(
                      'Date : 2020-7-6 ',   //"${controller.productlist.date.year}"+"-"+
                      //  "${controller.productlist.date.month}"+"-"+"${controller.productlist.date.day}",,
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),


          ],
        ),

      ),
    );

    Expanded(
      flex: 4,
      child: Column(
        children: [



        ],
      ),
    );

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

    // ]));
  }

  TextEditingController comController = TextEditingController();


/*
      SingleChildScrollView(
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
                        image: AssetImage('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٨١٩.jpg'),
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
                  FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.location_on,color:secondaryColor,),
                    label:Text('Location:',style: TextStyle(color:Colors.indigo),),),
                  SizedBox(width:10,),
                  Text("${controller.productlist.location}",
                    style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.location_on,color: Colors.orangeAccent,),
                    label:Text('Goal:',style: TextStyle(color:Colors.indigo),),),
                  SizedBox(width:10,),
                  Text("${controller.productlist.goal}",
                    style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.timer,color: Colors.orangeAccent,),
                    label:Text('Time:',style: TextStyle(color:Colors.indigo),),),
                  SizedBox(width:10,),
                  Text("${controller.productlist.travelTime}",
                    style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.monetization_on,color: Colors.orangeAccent,),
                    label:Text('Cost:',style: TextStyle(color:Colors.indigo),),),
                  SizedBox(width:10,),
                  Text("${controller.productlist.id}""\$" ,
                    style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                ],)
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child:Row(children: [
                  FlatButton.icon(onPressed: (){},
                    icon:Icon(Icons.date_range,color: Colors.orangeAccent,),
                    label:Text('Date:',style: TextStyle(color:Colors.indigo),),),
                  SizedBox(width:10,),
                  Text("${controller.productlist.date.year}"+"-"+
                      "${controller.productlist.date.month}"+"-"+"${controller.productlist.date.day}",
                    style: TextStyle(color:Colors.indigo,fontWeight: FontWeight.bold),),
                ],)
            ),

            SizedBox(height: 20,),*/
/*
Column(
  children: [
Padding(
  padding: const EdgeInsets.only(left:16.0),
  child:   Text("if you need start the trip ",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold

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
      child:   Text("if you need end the trip ",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold

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
      child:   Text("if you need accept the trip ",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold

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






}

