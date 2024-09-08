import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/internal_external_homeCont.dart';
import 'package:toproject2/View/Customer/External-Trip/External_Trips.dart';
import 'package:toproject2/View/Customer/External-Trip/home_External.dart';
import 'package:toproject2/View/Customer/Internal_Trip/home_Internal.dart';
import 'package:toproject2/View/Customer/drivers_available_screen.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var items = ['name', 'categarie', 'end date'];
  // final Home_Controller controller=Get.find();
  internal_external_Home controller = Get.put(internal_external_Home());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            //search
            // Padding(
            //   padding: const EdgeInsets.all(5),
            //   child: TextField(
            //     onTap: () {
            //       // NavigatTo(context,Saearch());
            //     },
            //     decoration: InputDecoration(
            //       prefixIcon: Icon(Icons.search, color: Colors.black, size: 20.0,),
            //       // Informition(
            //       //   icon: Icons.search,
            //       //   text: 'Search',),
            //       //   border: InputBorder,
            //         suffix: DropdownButton(
            //           dropdownColor: Colors.white,
            //           //hint:Text('Food'),
            //           elevation: 2,
            //           borderRadius: BorderRadius.circular(20.0),
            //           // value:dropdownvalue,
            //           icon: Icon(Icons.arrow_drop_down),
            //
            //           items: items.map((String items) {
            //             return DropdownMenuItem(
            //               value: items,
            //               child: Text(items),
            //             );
            //           }).toList(),
            //           onChanged: (value) {},
            //           // onChanged: (newValue){
            //           //   setState((){
            //           //     dropdownvalue!=newValue;
            //           //   }
            //         ),
            //         hintText: ''),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 50,
                        // width: 150,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                          onPressed: () {
                            if (!controller.isInternal) {
                              controller.change_home();
                            }
                          },
                          child: Row(
                            children: [
                              // SizedBox(width: 10,),
                              Icon(
                                Icons.flip_camera_android_rounded,
                                size: 30,
                                color: primaryColor,
                              ),
                              // SizedBox(width: 4,),
                              Text(
                                "Internal",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 50,
                        // width: 150,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                          onPressed: () {
                            if (controller.isInternal) {
                              controller.change_home();
                              //   canceldriver(drivertoken.drivertokenn);
                            }
                          },
                          child: Row(
                            children: [
                              // SizedBox(width: 10,),
                              Icon(
                                Icons.mode_of_travel_sharp,
                                size: 30,
                                color: primaryColor,
                              ),
                              // SizedBox(width: 4,),
                              Text(
                                "External",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 50,
                        // width: 50,
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: MaterialButton(
                          onPressed: () {
                            if (controller.isInternal) {
                              Get.to(availabledriverscreen());
                            } else
                              Get.to(External_Trips());
                            // controller.change_home();
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              // Icon(
                              //   Icons.search,
                              //   size: 30,
                              //   color: primaryColor,
                              // ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Booking",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GetBuilder<internal_external_Home>(
              builder: (controller) => ConditionalBuilder(
                condition: controller.isInternal,
                builder: (context) => home_Internal(),
                fallback: (context) => home_External(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
