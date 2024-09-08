import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toproject2/View/Customer/bookexternal.dart';
import 'package:toproject2/View/Customer/details_external_trips_user.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/detailsextrernaltripsnew/externaldetailstrip.dart';
import '../../../Controller/Customer_Controlers/External_Controlller/Offer_controller.dart';
import '../../../Controller/Customer_Controlers/External_Controlller/TripsE_Cont.dart';
Ofeer_Cont controller=Get.put(Ofeer_Cont());
TripsE_Cont control=Get.put(TripsE_Cont());
int id=0;
class home_External extends StatelessWidget {
   home_External({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      // mainAxisAlignment: MainAxisAlignment.start,

      children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                // controller.ListOffers.offires[0][0].branchName}
                'Offers',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Stack(children: [
                    InkWell(hoverColor: secondaryColor,
                      highlightColor: secondaryColor
                      ,
                      focusColor: secondaryColor,
                      onHover: (stat){

                        // GetBuilder<officePrefer_Cont>(builder:(controller)=>
                        //     controller.isDialog?AwesomeDialog(
                        //    context: context,
                        //    title: 'Contain Offer',
                        //    body: Text('herrr'),//${controller.ListOffers.offires[0][0].description}
                        //  ): );

                      },
                      onTap: () {
    showDialog<void>(
    builder: (BuildContext context) {
    return AlertDialog(
    content:SingleChildScrollView(
    child: Column(
    children: [
    TextButton( child: Text("Description: ${controller.ListOffers.offires[index].description}", style: TextStyle(
    color: primaryColor, fontSize: 19,fontWeight:
    FontWeight.bold
    ),),
    onPressed: (){
      // Get.to(paycashextrrnal());
    },),
    // TextButton( child: Text("Booking", style: TextStyle(
    // color: primaryColor, fontSize: 19
    // ,fontWeight:
    // FontWeight.bold
    // ),),
    // onPressed: (){
    // // Get.to(pay());
    // },),
    ],
    ),
    )

    );

    }, context: context);
    },

                      splashColor: Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.circular(15),
                      child:Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: secondaryColor.withOpacity(0.07),
                          // boxShadow:[BoxShadow(
                          //     color: Colors.black,
                          //     // offset: Offset(0.0, 4),
                          //     blurRadius: 10),]
                        ),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color:primaryColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(0.0, 4),
                                            blurRadius: 10),
                                      ]),
                                  child: Icon(Icons.auto_awesome,color: secondaryColor,size: 40, )),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 2.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // ${controller.ListOffers.offires[0][0].office_id}
                                  Text('${controller.ListOffers.offires[index].nameOffice}',style: TextStyle(fontSize:23,color: primaryColor,fontWeight: FontWeight.bold),),

                                  Text('in:${controller.ListOffers.offires[index].location} in ${controller.ListOffers.offires[index].branchName}',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                                  // ${controller.ListOffers.offires[0][0].branchName} ${controller.ListOffers.offires[0][0].location}

                                ],),
                            ),
                          ],
                        ),
                      ),

                    ),
                  ]),
                ),
            // child: Card(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   elevation: 7,
            //   shadowColor: secondaryColor.withOpacity(0.5),
            //   margin: EdgeInsets.all(10),
            //   child: Column(
            //     children: [
            //       Container(
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(5),
            //           child: Image.asset('assets/images/n.jpg',
            //               height: 150, fit: BoxFit.cover),
            //         ),
            //         color: Colors.black.withOpacity(0.8),
            //         // clipBehavior: Clip.hardEdge,
            //       ),
            //       Expanded(
            //         child: Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.all(2.0),
            //                 child: Text(
            //                   'Discreption : this my offers',
            //                   style: TextStyle(
            //                       color: primaryColor,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold,
            //                       fontStyle: FontStyle.italic),
            //                 ),
            //               ),
            //
            //               // SizedBox(
            //
            //               //   width: 30,
            //
            //               // ),
            //
            //               // Text(
            //
            //               //   '\& ' 'dfd',
            //
            //               //   style: TextStyle(
            //
            //               //       fontSize: 18,
            //
            //               //       fontWeight: FontWeight.bold,
            //
            //               //       color: Color.fromRGBO(51, 110, 127, 1)),
            //
            //               // )
            //             ]),
            //       ),
            //     ],
            //   ),
            // ),
            // proudcts_Item(proudcts[index]),

            separatorBuilder: (context, index) => SizedBox(
              width: 10.0,
            ),

            itemCount: controller.ListOffers.offires.length,

            //itemCount:proudcts.length,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            // controller.ListOffers.offires[0][0].branchName}
            'Available Trips',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: primaryColor,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: control.ListTrips.length,
          itemBuilder: (c, index) {
            return GestureDetector(
              onTap: () {
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
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 4),
                                  blurRadius: 10)
                            ]),
                        child: Row(
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

                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10,
                                  left: 10
                              ),
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
                                        "${control.ListTrips[index].date.year}"+"-"+
                                            "${control.ListTrips[index].date.month}"+"-"+
                                            "${control.ListTrips[index].date.day}",

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
                                      Icon(Icons.money_off,
                                        color:secondaryColor,
                                        size: 15,),
                                      Text(
                                        "cost :  "+  "${control.ListTrips[index].cost}",
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
                                        "travelDestnation: "+ "${control.ListTrips[index].destnation}",
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

                            ),
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

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       //${control.ListTrips}
        //
        //     ],
        //   ),
        // ),

      ],
    );
  }
}

//
// Widget home_External()=>
//     Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//
//       // mainAxisAlignment: MainAxisAlignment.start,
//
//       children: [
//
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 // controller.ListOffers.offires[0][0].branchName}
//                 'Offers',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic,
//                   color: primaryColor,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: double.infinity,
//           height: 100,
//           child: ListView.separated(
//             scrollDirection: Axis.horizontal,
//             itemBuilder: (context, index) =>
//                 Padding(
//                   padding: const EdgeInsetsDirectional.only(start: 10),
//                   child: Stack(children: [
//                     InkWell(hoverColor: secondaryColor,
//                       highlightColor: secondaryColor
//                       ,
//                       focusColor: secondaryColor,
//                       onHover: (stat){
//
//                         // GetBuilder<officePrefer_Cont>(builder:(controller)=>
//                         //     controller.isDialog?AwesomeDialog(
//                         //    context: context,
//                         //    title: 'Contain Offer',
//                         //    body: Text('herrr'),//${controller.ListOffers.offires[0][0].description}
//                         //  ): );
//
//                       },
//                       onTap: () {
//                         AwesomeDialog(
//                           context: context,
//                           title: 'Contain Offer',
//                           body: Text('herrr'),//${controller.ListOffers.offires[0][0].description}
//                         );
//                       },
//                       splashColor: Theme.of(context).secondaryHeaderColor,
//                       borderRadius: BorderRadius.circular(15),
//                       child:Container(
//
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: secondaryColor.withOpacity(0.07),
//                           // boxShadow:[BoxShadow(
//                           //     color: Colors.black,
//                           //     // offset: Offset(0.0, 4),
//                           //     blurRadius: 10),]
//                         ),
//                         child: Column(
//                           children: [
//
//                             Padding(
//                               padding: const EdgeInsetsDirectional.only(top: 2),
//                               child: Container(
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(100),
//                                       color:primaryColor,
//                                       boxShadow: [
//                                         BoxShadow(
//                                             color: Colors.black,
//                                             offset: Offset(0.0, 4),
//                                             blurRadius: 10),
//                                       ]),
//                                   child: Icon(Icons.auto_awesome,color: secondaryColor,size: 40, )),
//                             ),
//                             Padding(
//                               padding: const EdgeInsetsDirectional.only(top: 2.0),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   // ${controller.ListOffers.offires[0][0].office_id}
//                                   Text('${controller.ListOffers.offires[index][0].nameOffice}',style: TextStyle(fontSize:23,color: primaryColor,fontWeight: FontWeight.bold),),
//
//                                   Text('in:${controller.ListOffers.offires[index][0].location} in ${controller.ListOffers.offires[index][0].branchName}',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
//                                   // ${controller.ListOffers.offires[0][0].branchName} ${controller.ListOffers.offires[0][0].location}
//
//                                 ],),
//                             ),
//                           ],
//                         ),
//                       ),
//
//                     ),
//                   ]),
//                 ),
//             // child: Card(
//             //   shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.circular(10),
//             //   ),
//             //   elevation: 7,
//             //   shadowColor: secondaryColor.withOpacity(0.5),
//             //   margin: EdgeInsets.all(10),
//             //   child: Column(
//             //     children: [
//             //       Container(
//             //         child: ClipRRect(
//             //           borderRadius: BorderRadius.circular(5),
//             //           child: Image.asset('assets/images/n.jpg',
//             //               height: 150, fit: BoxFit.cover),
//             //         ),
//             //         color: Colors.black.withOpacity(0.8),
//             //         // clipBehavior: Clip.hardEdge,
//             //       ),
//             //       Expanded(
//             //         child: Row(
//             //             mainAxisAlignment: MainAxisAlignment.start,
//             //             crossAxisAlignment: CrossAxisAlignment.start,
//             //             children: [
//             //               Padding(
//             //                 padding: const EdgeInsets.all(2.0),
//             //                 child: Text(
//             //                   'Discreption : this my offers',
//             //                   style: TextStyle(
//             //                       color: primaryColor,
//             //                       fontSize: 18,
//             //                       fontWeight: FontWeight.bold,
//             //                       fontStyle: FontStyle.italic),
//             //                 ),
//             //               ),
//             //
//             //               // SizedBox(
//             //
//             //               //   width: 30,
//             //
//             //               // ),
//             //
//             //               // Text(
//             //
//             //               //   '\& ' 'dfd',
//             //
//             //               //   style: TextStyle(
//             //
//             //               //       fontSize: 18,
//             //
//             //               //       fontWeight: FontWeight.bold,
//             //
//             //               //       color: Color.fromRGBO(51, 110, 127, 1)),
//             //
//             //               // )
//             //             ]),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // proudcts_Item(proudcts[index]),
//
//             separatorBuilder: (context, index) => SizedBox(
//               width: 10.0,
//             ),
//
//             itemCount: controller.ListOffers.offires.length,
//
//             //itemCount:proudcts.length,
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Row(
//         //     mainAxisAlignment: MainAxisAlignment.start,
//         //     children: [
//         //       //${control.ListTrips}
//         //
//         //     ],
//         //   ),
//         // ),
//
//       ],
//     );
//

