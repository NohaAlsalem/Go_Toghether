import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/externalofficetrip/externalofficetrip.dart';
import '../../Controller/Customer_Controlers/detailsofff_controller.dart';
import 'cars_available_screen.dart';
import 'driver_office.dart';

class DetailofficeScreen extends StatelessWidget {
  // final Hotel? hotels;

  detailsofficecontroller controller =
      Get.put<detailsofficecontroller>(detailsofficecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 300,
                child: Column(
                  children: [
                    // Transform.translate(offset:Offset (15,40),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 20.0, start: 20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.person_add_alt_1,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    'Name Office: '+"${controller.detailsoffice.office[0].name}",
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
                                      Icons.location_on,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    'Location: '+ "${controller.detailsoffice.office[0].location}",
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
                                    'Government: ff'+ "${controller.detailsoffice.government}",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
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
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10),
                      child: Text(
                        'Services Domain: '+ "${controller.detailsoffice.government}",
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 3, //controller.detailsoffice.star
                      minRating: 1,
                      direction: Axis.horizontal,
                      // allowHalfRating: true,
                      itemCount: 5,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 0.2),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: secondaryColor,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.phone,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        'phones: '+"${controller.detailsoffice.office[0].phoneOne}",
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
                              Icons.car_rental,
                              color: secondaryColor,
                            ),
                          ),
                          Text(
                            'Services Type '+  "${controller.detailsoffice.typeTravel}",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsetsDirectional.only(top: 15,start: 33),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: secondaryColor,
                          ),
                          Text(
                            'The Available Driver ',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: primaryColor,
                          ),
                          SizedBox(width: 10,),
                          InkWell(
                            onTap: () {
                              Get.to(driverscreen());
                            },
                            child: Container(
                              color: secondaryColor,
                              child: Text(
                                'Show Drivers',
                                style: TextStyle(
                                  fontSize: 18,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                      padding:const EdgeInsetsDirectional.only(top: 25,start: 33),
                      child: Row(
                        children: [
                          Icon(
                            Icons.car_rental,
                            color: secondaryColor,
                          ),
                          Text(
                            'The Available Cars',
                            style: TextStyle(
                                color: primaryColor,

                                fontWeight: FontWeight.bold),
                          ),

                          Icon(
                            Icons.arrow_forward,
                            color: primaryColor,
                          ),
                          SizedBox(width: 10,),

                        ],
                      )),
                  InkWell(
                    onTap: () {
                      Get.to(carsavailableScreen());
                    },
                    child: Container(
                      color: secondaryColor,
                      child: Text(
                        'Show Cars',
                        style: TextStyle(
                            fontSize: 18,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                  padding:const EdgeInsetsDirectional.only(top: 25,start: 33),
    child: Row(
    children: [
                  Text(
                    'The Available Trips',
                    style: TextStyle(
                        color: primaryColor,

                        fontWeight: FontWeight.bold),
                  ),

                  Icon(
                    Icons.arrow_forward,
                    color: primaryColor,
                  ),
                  SizedBox(width: 10,),

                  InkWell(
                    onTap: () {
                      var id2=0;
                      id2=controller.detailsoffice.office[0].id;
                      print(id2);
                      Get.to(externaltripoffce(),arguments: id2);
                    },
                    child: Container(
                      color: secondaryColor,
                      child: Text(
                        'Show Trips',
                        style: TextStyle(
                            fontSize: 18,
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ],
    ),
                  ),
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
}
