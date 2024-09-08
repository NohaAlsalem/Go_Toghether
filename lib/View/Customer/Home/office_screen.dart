import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/office_controller.dart';
import '../../../Controller/Customer_Controlers/pay_controller.dart';
import '../../../Network/APIs.dart';
import '../detailsoff_scfreen.dart';

class officeScreen extends StatelessWidget {

  int id=0;

  officecontroller controller =
  Get.put<officecontroller>(officecontroller());

  paycontroller controller1 =
  Get.put<paycontroller>(paycontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
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

                  children: [

                    // Text(
                    //   'Office',
                    //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,  color:primaryColor),
                    // ),
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
                    itemCount:controller.alloffice.length,
                    itemBuilder: (c, index) {
                      return GestureDetector(
                        onTap: () {
                             id=controller.alloffice[index].id;
                           print(id);
                          Get.to(DetailofficeScreen(),arguments: id);
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 10),
                                child: Container(
                                  height: 110,
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
                                      Positioned(
                                        child: Container(
                                          height: 130,
                                          width: 170,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/Capre.PNG'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 190.0,top: 10),
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
                                                  Icon(Icons.person,color: secondaryColor,
                                                    size: 15,),
                                                  Text(
                                                   'name:  '+ "${controller.alloffice[index].name}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: primaryColor),
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
                                                  Icon(Icons.location_on_rounded,color: secondaryColor, size: 15,),
                                                  Text(
                                                  'location:  '+  "${controller.alloffice[index].location}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: primaryColor),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 19,),

                                              Row(
                                                children: [
                                                  Icon(Icons.star,color: secondaryColor, size: 15,),
                                                  Text(
                                                   'role:  '+ "${controller.alloffice[index].role}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
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
                      );
                    },
                  ),
                ],
                ),
              )
            ],
          ),


    );
  }

  Future<void> confirmreservation(String token )async {

    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.confirmreservation);
    print(url);
    print(token);
    var response = await http.get(
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

// _hotelPackage(int index) {
//   return ;
// }
