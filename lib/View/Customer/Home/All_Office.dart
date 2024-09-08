import 'package:flutter/material.dart';

class All_Office extends StatelessWidget {

  const All_Office({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return
      SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

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
                    'Trips',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,  color: Colors.indigo),
                  ),

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
                  itemCount:10,
                  itemBuilder: (c, index) {
                    return GestureDetector(
                      onTap: () {
                        //Get.to(DetailScreen());
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
                                              image: AssetImage('assets/images/IMG_٢٠٢٣٠٦٠١_١٦٠٨١٩.jpg'),
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
                                              Icon(Icons.date_range_outlined,color: Colors.orangeAccent, ),
                                              Text(
                                                // ${controller.productlist.reservations[index].travelTime}
                                                "kl",
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
                                              Icon(Icons.location_on,color: Colors.orangeAccent, ),
                                              Text(
                                                "goal: ",
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
                                          Row(
                                            children: [
                                              Icon(Icons.location_on,color: Colors.orangeAccent, ),
                                              Text(
                                                "location : " ,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.indigo),
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
}
