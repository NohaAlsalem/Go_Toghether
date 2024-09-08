

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/trips_user_controller.dart';
import 'package:toproject2/View/Shared/common_Color.dart';


class drivernotiScreen extends StatefulWidget {

  @override
  State<drivernotiScreen> createState() => _drivernotiScreenState();
}

class _drivernotiScreenState extends State<drivernotiScreen> {

  int id=0;
  tripsusercontroller controller =
  Get.put<tripsusercontroller>(tripsusercontroller());

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
      body:

      SafeArea(
        child:

        SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // Container(
                    //   height: 50,
                    //   width: 50,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(100),
                    //       image: DecorationImage(
                    //           image: AssetImage('assets/profile.jpg'),
                    //           fit: BoxFit.cover),
                    //       boxShadow: [
                    //         BoxShadow(
                    //             color: Colors.black54,
                    //             offset: Offset(0.0, 4),
                    //             blurRadius: 10.0)
                    //       ]),
                    // )
                  ],
                ),
              ),


              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    Text(
                      ' Notification Driver',
                      style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    // Text(
                    //   'view all',
                    //   style: TextStyle(fontSize: 14, color: Colors.blue),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Column(children: [

                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 7,//controller.alltrips.length,,
                    itemBuilder: (c, index) {
                      return GestureDetector(
                        onTap: () {
                        
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10),
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            offset: Offset(0.0, 4),
                                            blurRadius: 10)
                                      ]),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:   Container(

                                          width:130,

                                          height: 80,

                                          child: Icon(Icons.person_outline_outlined,size: 40,),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 159.0, top: 10),
                                        child: Positioned(
                                          //   top: 19,
                                          // right: 140,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [

                                              SizedBox(width: 20,),
                                              Row(
                                                children: [
                                                  Icon(Icons.date_range_outlined,
                                                    color:secondaryColor,
                                                    size: 15,),
                                                  Text(
                                                    'date : 2020-6-6 ',  // "${controller.alltrips[index].date.year}"+"-"+
                                                    //"${controller.alltrips[index].date.month}"+"-"+
                                                    //  "${controller.alltrips[index].date.day}",

                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .w600,
                                                        color: primaryColor),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              // Text(
                                              //   hotels[index].description.toString(),
                                              //   style: TextStyle(fontSize: 12, color: Colors.grey),
                                              // ),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on_rounded,
                                                    color:secondaryColor,
                                                    size: 15,),
                                                  Text(
                                                    "goal :  daraa",//+  //"${controller.alltrips[index].goal}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .w600,
                                                        color: primaryColor),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.location_on_rounded,
                                                    color:secondaryColor,
                                                    size: 15,),
                                                  Text(
                                                    "location: homs ",//+ "${controller.alltrips[index].location}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight
                                                            .w600,
                                                        color: primaryColor),
                                                  ),
                                                ],
                                              ),


                                              // Container(
                                              //   height: 40,
                                              //   width: 120,
                                              //   // color: Colors.green,
                                              //   decoration: BoxDecoration(
                                              //       color: Colors.blue,
                                              //       borderRadius: BorderRadius.circular(10)),
                                              //   child: Column(
                                              //     mainAxisAlignment: MainAxisAlignment.center,
                                              //     children: [
                                              //       // Text(
                                              //       //   'Book Now',
                                              //       //   style: TextStyle(color: Colors.white, fontSize: 12),
                                              //       //   textAlign: TextAlign.center,
                                              //       // ),
                                              //     ],
                                              //   ),
                                              // )
                                            ],
                                          ),
                                        ),

                                      ),




                                      /*  SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // Container(
                  //   height: 50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(100),
                  //       image: DecorationImage(
                  //           image: AssetImage('assets/profile.jpg'),
                  //           fit: BoxFit.cover),
                  //       boxShadow: [
                  //         BoxShadow(
                  //             color: Colors.black54,
                  //             offset: Offset(0.0, 4),
                  //             blurRadius: 10.0)
                  //       ]),
                  // )
                ],
              ),
            ),


            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Internal User Trips ',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,  color: Colors.indigo),
                  ),
                  // Text(
                  //   'view all',
                  //   style: TextStyle(fontSize: 14, color: Colors.blue),
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child:Column(children: [

                ListView.builder(
                  shrinkWrap: true,
                  itemCount:controller.alltrips.length,
                  itemBuilder: (c, index) {
                    return GestureDetector(
                      onTap: () {
                        id=controller.alltrips[index].id;
                        print(id);
                       Get.to(DetailtripScreen(),arguments: id);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10),
                              child: Container(
                                height: 160,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          offset: Offset(0.0, 4),
                                          blurRadius: 10)
                                    ]),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        height: 160,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/IMG_٢٠٢٣٠٨١٤_١٢٢٩١٩.jpg'),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 19,
                                      right: 60,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [

                                          SizedBox(width: 20,),
                                          Row(
                                            children: [
                                              Icon(Icons.date_range_outlined,color: Colors.orangeAccent,
                                                size: 15,),
                                              Text(
                                             "${controller.alltrips[index].date.year}"+"-"+
                                                 "${controller.alltrips[index].date.month}"+"-"+
                                                 "${controller.alltrips[index].date.day}",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.indigo),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          // Text(
                                          //   hotels[index].description.toString(),
                                          //   style: TextStyle(fontSize: 12, color: Colors.grey),
                                          // ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on_rounded,color: Colors.orangeAccent, size: 15,),
                                              Text(
                                            "goal : "+  "${controller.alltrips[index].goal}",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.indigo),
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            height: 35,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.location_on,color: Colors.orangeAccent, size: 15,),

                                              Padding(
                                                padding: const EdgeInsets.only(left:8.0),
                                                child: Text(
                                                  "location: "+ "${controller.alltrips[index].location}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.indigo),
                                                ),
                                              ),
                                            ],
                                          ),*/
                                      // Container(
                                      //   height: 40,
                                      //   width: 120,
                                      //   // color: Colors.green,
                                      //   decoration: BoxDecoration(
                                      //       color: Colors.blue,
                                      //       borderRadius: BorderRadius.circular(10)),
                                      //   child: Column(
                                      //     mainAxisAlignment: MainAxisAlignment.center,
                                      //     children: [
                                      //       // Text(
                                      //       //   'Book Now',
                                      //       //   style: TextStyle(color: Colors.white, fontSize: 12),
                                      //       //   textAlign: TextAlign.center,
                                      //       // ),
                                      //     ],
                                      //   ),
                                      // )
                                      /*      ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )*/

                                      // _hotelPackage(0),
                                      // SizedBox(height: 0),
                                      // _hotelPackage(1),
                                      // SizedBox(
                                      //   height: 0,
                                      // ),
                                      // _hotelPackage(2)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

// _hotelPackage(int index) {
//   return ;
// }
