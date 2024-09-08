

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Customer/trips_details_user.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/trips_user_controller.dart';


int id=0;
tripsusercontroller controller =
Get.put<tripsusercontroller>(tripsusercontroller());
class internaltripsuserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        Text('Your Internal Trips'),
        ListView.builder(
          shrinkWrap: true,
          itemCount: controller.alltrips.length,
          itemBuilder: (c, index) {
            return GestureDetector(
              onTap: () {
                //  id=controller.alltrips[index].id;
                //print(id);
                Get.to(DetailtripScreen()); //,arguments: id);
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
                                    color: primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(0.0, 4),
                                          blurRadius: 10),
                                    ]),
                                child: Icon(
                                  Icons.card_travel_sharp,
                                  color: secondaryColor,
                                  size: 100,)),

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
                                        color: secondaryColor,
                                        size: 15,),
                                      Text(
                                        'date : 2020-6-6 ',
                                        // "${controller.alltrips[index].date.year}"+"-"+
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
                                        color: secondaryColor,
                                        size: 15,),
                                      Text(
                                        "goal :  daraa",
                                        //+  //"${controller.alltrips[index].goal}",
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
                                        color: secondaryColor,
                                        size: 15,),
                                      Text(
                                        "location: homs ",
                                        //+ "${controller.alltrips[index].location}",
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
      ],
      );
  }
}
