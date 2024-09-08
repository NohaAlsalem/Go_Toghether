import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/External_Controlller/TripsE_Cont.dart';
import 'package:toproject2/Controller/Customer_Controlers/Internal_Controllers/IOffer_Cont.dart';
import 'package:toproject2/Network/MiddelWare/user_con.dart';
import 'package:toproject2/View/Customer/bookexternal.dart';
import 'package:toproject2/View/Customer/details_external_trips_user.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/detailsextrernaltripsnew/externaldetailstrip.dart';

class External_Trips extends StatelessWidget {
   External_Trips({Key? key}) : super(key: key);

   TripsE_Cont control=Get.put(TripsE_Cont());
   int id=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title:   Text(
          'Trips',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: primaryColor,
          ),
        ),
      ),
     body:SafeArea(
         child: ListView.separated(
             itemCount: control.ListTrips.length,
             separatorBuilder:(context, index)=>SizedBox(height:10,) ,
             itemBuilder:(context, index)=>
                 Column(children: [
                   // ListView.builder(
                   //   shrinkWrap: true,
                   //   itemCount: control.ListTrips.length,
                   //   itemBuilder: (c, index) {
                   //     return
                       GestureDetector(
                         onTap: () {
                           print('ffff'+"${control.ListTrips[index].id}");
                           id=control.ListTrips[index].id;
                           print(id);
                           Get.to(externalDetailtripScreennew(),arguments: id);
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
                                       borderRadius: BorderRadius.circular(
                                           10),
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
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.only(
                                               topLeft: Radius.circular(10),
                                               bottomLeft: Radius.circular(
                                                   10),
                                             ),
                                             // image: DecorationImage(
                                             //     image: AssetImage('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٨١٩.jpg'),
                                             //     fit: BoxFit.cover),
                                           ),
                                         ),
                                       ),
                                       Positioned(
                                         // top: 19,
                                         // right: 60,
                                         child: Row(
                                           crossAxisAlignment:
                                           CrossAxisAlignment.start,
                                           mainAxisAlignment: MainAxisAlignment.start,
                                           children: [
                                             Container(

                                                 decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.circular(10),
                                                     color:primaryColor,
                                                     boxShadow: [
                                                       BoxShadow(
                                                           color: Colors.black,
                                                           offset: Offset(0.0, 4),
                                                           blurRadius: 10),
                                                     ]),
                                                 child: Icon(Icons.card_travel_sharp,color: secondaryColor,size: 100, )),
                                             SizedBox(width: 20,),
                                             Column(
                                               mainAxisAlignment: MainAxisAlignment.start,
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Row(
                                                   children: [
                                                     Icon(
                                                       Icons.date_range_outlined,
                                                       color: secondaryColor,),
                                                     Text(
                                                       // ${controller.productlist.reservations[index].travelTime}
                                                       "Time Trip : ${control.ListTrips[index].time} ",
                                                       style: TextStyle(
                                                           fontSize: 14,
                                                           fontWeight: FontWeight
                                                               .w600,
                                                           color: primaryColor),
                                                     ),
                                                   ],
                                                 ),
                                                 SizedBox(
                                                   height: 10,
                                                 ),
                                                 Row(
                                                   children: [
                                                     Icon(Icons.location_on,
                                                       color: secondaryColor,),
                                                     // ${controller.productlist.reservations[index].travelTime}
                                                     Text(
                                                       "goal :  "+"${control.ListTrips[index].destnation} ",
                                                       style: TextStyle(
                                                           fontSize: 14,
                                                           fontWeight: FontWeight
                                                               .w600,
                                                           color: primaryColor),
                                                     ),
                                                   ],
                                                 ),
                                                 SizedBox(
                                                   height: 10,
                                                 ),
                                                 Row(
                                                   children: [
                                                     Icon(Icons.location_on,
                                                       color: secondaryColor,),
                                                     Text(
                                                       "location Start: ${control.ListTrips[index].location}",
                                                       style: TextStyle(
                                                           fontSize: 14,
                                                           fontWeight: FontWeight
                                                               .w600,
                                                           color: primaryColor),
                                                     ),
                                                   ],
                                                 ),

                                               ],
                                             ),

                                             // Text(
                                             //   hotels[index].description.toString(),
                                             //   style: TextStyle(fontSize: 12, color: Colors.grey),
                                             // ),
                                             Spacer(),
                                             Column(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               crossAxisAlignment: CrossAxisAlignment.center,
                                               children: [
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Container(
                                                       decoration:BoxDecoration(
                                                         color: primaryColor,
                                                         borderRadius: BorderRadius.circular(10),
                                                       ),
                                                       child: TextButton(onPressed: (){
                                                         print('ffff'+"${control.ListTrips[index].id}");
                                                         id=control.ListTrips[index].id;
                                                         print(id);
                                                         usertoken.externaltripid=control.ListTrips[index].id;
                                                         Get.to(externalReservation(),arguments: id);
                                                       }, child: Text('Booking',style: TextStyle(color: secondaryColor),))),
                                                 ),
                                               ],
                                             ),
                                           ],
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               )

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
                 )
         )
     ),
    );
  }
}
