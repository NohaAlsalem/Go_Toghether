import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toproject2/View/Customer/bookinternal.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../Controller/Customer_Controlers/details_driver_controller.dart';

class detailsdriver extends StatelessWidget {
  detailsdriver({Key? key}) : super(key: key);

  detailsdrivercontroller controller =
      Get.put<detailsdrivercontroller>(detailsdrivercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: secondaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 300,
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 20.0, start: 3),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 140,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/Capre.PNG'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(0.0, 4),
                                  blurRadius: 10),
                            ],
                          ),
                          //  child: Image.asset('assets/images/yousef.png',fit: BoxFit.fill,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print(controller.profile.firstName);
                                  },
                                  child: Icon(
                                    Icons.person_add_alt_1,
                                    color: secondaryColor,

                                  ),
                                ),
                                Text("Name:"+"${controller.profile.firstName}" +
                                    "${controller.profile.lastName}"),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     MaterialButton(
                            //       onPressed: () {},
                            //       child: Icon(
                            //         Icons.location_on,
                            //         color: secondaryColor,
                            //       ),
                            //     ),
                            //     Text(
                            //       'Number Of points: ',//${controller.profile.numberpoint}"
                            //       style: TextStyle(
                            //           color: primaryColor,
                            //           fontWeight: FontWeight.bold),
                            //     ),
                            //   ],
                            // ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: secondaryColor,
                                  ),
                                ),
                                Text(
                                  "Email : "+" ${controller.profile.email}",
                                )
//                     style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),,
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.location_on_rounded,
                                    color: secondaryColor,
                                  ),
                                ),
                                Text("Address: "+" ${controller.profile.address}"),
//                     style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),,
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                     Icon(
                          Icons.phone,
                          color: secondaryColor,
                        ),
                      SizedBox(width: 5,),
                      Text(
                        "Phone1: ${controller.profile.phoneOne}",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold,fontSize: 15,),
                      ),
                      SizedBox(width: 15,),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: secondaryColor,
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "Phone2: ${controller.profile.phoneTwo}",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,fontSize: 15,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Evaluation To Your Driver',style: TextStyle(color: primaryColor,fontSize: 17,fontWeight: FontWeight.bold),),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: secondaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          //   controller.ratingnumber=rating ;
                          print(rating);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Positioned(
                    // bottom: 0,
                    // height: 60,
                    child: Container(
                      color: Colors.white10,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        onChanged: (value) {
                          controller.comment = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'write your comment',
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
                Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(internalReservation());
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Booking',
                          style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onclick() async {
    // EasyLoading.show(status: 'loading');
    await controller.onclickrating();
  }
}
