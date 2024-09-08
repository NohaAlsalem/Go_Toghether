

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/External_Controlller/terips_external_controller.dart';
import '../details_external_trips_user.dart';

class externaltripsuserScreen extends StatelessWidget {

  int id=0;

  externaltripsusercontroller controller =
  Get.put<externaltripsusercontroller>(externaltripsusercontroller());

  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
Text('Your External Trips'),
        ListView.builder(
          shrinkWrap: true,
          itemCount: controller.alltrips.length,
          itemBuilder: (c, index) {
            return GestureDetector(
              onTap: () {
                  id=controller.alltrips[index].id;
                print(id);
                Get.to(externalDetailtripScreen(),arguments: id);
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
                                     "${controller.alltrips[index].travelDate.year}"+"-"+
                                        "${controller.alltrips[index].travelDate.month}"+"-"+
                                          "${controller.alltrips[index].travelDate.day}",

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
                                        "cost :  "+  "${controller.alltrips[index].cost}",
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
                                        "travelDestnation: "+ "${controller.alltrips[index].travelDestnation}",
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

// _hotelPackage(int index) {
//   return ;
// }
