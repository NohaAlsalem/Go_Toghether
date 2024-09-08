import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/Controller/Customer_Controlers/internal_external_homeCont.dart';
import 'package:toproject2/View/Customer/Home/trips_user.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../../Controller/Customer_Controlers/Internal_Controllers/MyTrip_Cont.dart';
import 'external_trips_user.dart';

class MyTrip extends StatelessWidget {
  MyTrip({Key? key}) : super(key: key);
  var items = ['name', 'categarie', 'end date'];
  // final Home_Controller controller=Get.find();
  MyTrip_Cont controller=Get.put(MyTrip_Cont());
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
         body: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 150,
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
                          children:[
                            SizedBox(width: 10,),
                            Icon(
                              Icons.flip_camera_android_rounded,
                              size: 30,
                              color: primaryColor,
                            ),
                            SizedBox(width: 4,),
                            Text("Internal",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: MaterialButton(
                      onPressed:() {
                        if (controller.isInternal) {
                          controller.change_home();
                          //   canceldriver(drivertoken.drivertokenn);
                        }
                        //   canceldriver(drivertoken.drivertokenn);

                      },
                      child: Row(
                        children:[
                          SizedBox(width: 10,),
                          Icon(
                            Icons.mode_of_travel_sharp,
                            size: 30,
                            color: primaryColor,
                          ),
                          SizedBox(width: 4,),
                          Text("External",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GetBuilder<MyTrip_Cont>(builder:(controller)=>ConditionalBuilder(condition: controller.isInternal, builder:(context)=>internaltripsuserScreen()
              , fallback:(context)=>externaltripsuserScreen(),
            ),)
          ],

    ),
       );
  }
}
