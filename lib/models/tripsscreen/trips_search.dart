

import 'package:driverapp/models/tripsscreen/trips_controller.dart';
import 'package:driverapp/modelspost/dortips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Dataflightsearch extends SearchDelegate {
  tripscontroller controller = Get.put<tripscontroller>(tripscontroller());
  late List <Reservation> l = controller.re as List<Reservation> ;
  List <Reservation>  l1 = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        child: Card(
          color: Colors.red,
          shape: StadiumBorder(),
          child: Center(
            child: Text(
              'finish',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? l1
        : l.where((e) => e.date.toString().startsWith(query)).toList();
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount:suggestionlist.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showResults(context);
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Container(
                      height: 150,
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
                                    image: AssetImage(
                                        'assets/images/IMG_٢٠٢٢٠٨٠٢_١٧٤٩٤٦.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    // '',
                                    //  '${index}',
                                    "${controller.productlist.reservations[index].date}",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                    "${controller.productlist.reservations[index].date}",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.blue),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    "${controller.productlist.reservations[index].date}",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blue),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
