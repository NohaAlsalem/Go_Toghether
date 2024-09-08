import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/External_Controlller/Offer_controller.dart';
import 'package:toproject2/View/Customer/bookinternal.dart';
import 'package:toproject2/View/Customer/detailsoff_scfreen.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/Internal_Controllers/IOffer_Cont.dart';
import '../../../Controller/Customer_Controlers/Internal_Controllers/officePrefer_Cont.dart';
IOfeer_Cont controller=Get.put(IOfeer_Cont());
Ofeer_Cont controller1=Get.put(Ofeer_Cont());
int id=0;
officePrefer_Cont control=Get.put(officePrefer_Cont());
Widget home_Internal() => Column(
  crossAxisAlignment: CrossAxisAlignment.start,

  // mainAxisAlignment: MainAxisAlignment.start,

  children: [
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
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
      height: 130,
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
                              TextButton( child: Text("Description: ${controller.ListOffers.offires[index][0].description}", style: TextStyle(
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
                      padding: const EdgeInsetsDirectional.only(top: 10),
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
                          child: Icon(Icons.auto_awesome,color: secondaryColor,size: 50, )),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        // ${controller.ListOffers.offires[0][0].office_id}
                        Text('${controller1.ListOffers.offires[index].nameOffice}',style: TextStyle(fontSize:23,color: primaryColor,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('in:${controller1.ListOffers.offires[index].location} in ${controller1.ListOffers.offires[index].branchName}',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                        ),
                        // ${controller.ListOffers.offires[0][0].branchName} ${controller.ListOffers.offires[0][0].location}

                      ],),
                    ),
                  ],
                ),
              ),

          ),
        ]),
            ),

        separatorBuilder: (context, index) => SizedBox(
          width: 10.0,
        ),

        itemCount: controller1.ListOffers.offires.length,

        //itemCount:proudcts.length,
      ),
    ),
    SizedBox(
      height: 10,
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            ' Prefer Offices',
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
    Stack(
      children:[ SizedBox(
        width: double.infinity,
        height: 170,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 8),
            child: Stack(children: [
              InkWell(
                onTap: () {
                  Get.to(DetailofficeScreen());
                },
                splashColor: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Container(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/n.jpg',
                                height: 80, width:220,fit: BoxFit.cover),
                          ),
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   colors: [
                          //     Colors.black.withOpacity(0.8),
                          //   ],
                          // ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              '${control.Listprefers[index].name}',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              '${control.Listprefers[index].location}',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'number stars: ${control.Listprefers[index].stars}',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),

          // proudcts_Item(proudcts[index]),

          separatorBuilder: (context, index) => SizedBox(
            width: 20.0,
          ),

          itemCount: control.Listprefers.length,

          //itemCount:proudcts.length,
        ),
      ),
        // Positioned(
        //   top: 110,
        //   left: 130,
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.all(20.0),
        //       child: InkWell(
        //         onTap: (){
        //           Get.to(internalReservation());
        //         },
        //         child: Container(
        //           width: 100,
        //           height: 40,
        //           decoration: BoxDecoration(
        //             color: primaryColor,
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //           child: Center(
        //               child: Text(
        //                 'Booking',
        //                 style: TextStyle(
        //                     color: secondaryColor,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 20),
        //               )),
        //         ),
        //       ),
        //     ),
        //   ),
        // )
    ]),
    // Spacer(),

  ],
);
// ListView(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// ],
// ),
// ),
//
//
// SizedBox(
// height: 20,
// ),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'Trips',
// style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,  color: Colors.indigo),
// ),
//
// ],
// ),
// ),
// SizedBox(
// height: 10,
// ),
// SingleChildScrollView(
// child:Column(children: [
//
// ListView.builder(
// shrinkWrap: true,
// itemCount:10,
// itemBuilder: (c, index) {
// return GestureDetector(
// onTap: () {
// //Get.to(DetailScreen());
// },
// child: Container(
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 10.0, vertical: 10),
// child: Container(
// height: 160,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Colors.white,
// boxShadow: [
// BoxShadow(
// color: Colors.black12,
// offset: Offset(0.0, 4),
// blurRadius: 10)
// ]),
// child: Stack(
// children: [
// Positioned(
// child: Container(
// height: 160,
// width: 170,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(10),
// bottomLeft: Radius.circular(10),
// ),
// image: DecorationImage(
// image: AssetImage('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٨١٩.jpg'),
// fit: BoxFit.cover),
// ),
// ),
// ),
// Positioned(
// top: 19,
// right: 60,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
//
// SizedBox(width: 20,),
// Row(
// children: [
// Icon(Icons.date_range_outlined,color: Colors.orangeAccent, ),
// Text(
// // ${controller.productlist.reservations[index].travelTime}
// "kl",
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w600,
// color: Colors.indigo),
// ),
// ],
// ),
// SizedBox(
// height: 25,
// ),
// // Text(
// //   hotels[index].description.toString(),
// //   style: TextStyle(fontSize: 12, color: Colors.grey),
// // ),
// Row(
// children: [
// Icon(Icons.location_on,color: Colors.orangeAccent, ),
// Text(
// "goal: ",
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w600,
// color: Colors.indigo),
// ),
// ],
// ),
// SizedBox(
// height: 25,
// ),
// Row(
// children: [
// Icon(Icons.location_on,color: Colors.orangeAccent, ),
// Text(
// "location : " ,
// style: TextStyle(
// fontSize: 14,
// fontWeight: FontWeight.w600,
// color: Colors.indigo),
// ),
// ],
// ),
// // Container(
// //   height: 40,
// //   width: 120,
// //   // color: Colors.green,
// //   decoration: BoxDecoration(
// //       color: Colors.blue,
// //       borderRadius: BorderRadius.circular(10)),
// //   child: Column(
// //     mainAxisAlignment: MainAxisAlignment.center,
// //     children: [
// //       // Text(
// //       //   'Book Now',
// //       //   style: TextStyle(color: Colors.white, fontSize: 12),
// //       //   textAlign: TextAlign.center,
// //       // ),
// //     ],
// //   ),
// // )
// ],
// ),
// )
// ],
// ),
// ),
// )
//
// // _hotelPackage(0),
// // SizedBox(height: 0),
// // _hotelPackage(1),
// // SizedBox(
// //   height: 0,
// // ),
// // _hotelPackage(2)
// ],
// ),
// ),
// );
// },
// ),
// ],
// ),
// )
// ],
// );
