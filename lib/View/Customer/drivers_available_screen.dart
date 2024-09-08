import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:toproject2/View/Customer/details_driver.dart';
import 'package:toproject2/View/Shared/common_Color.dart';

import '../../Controller/Customer_Controlers/drivers_available_controller.dart';
import 'Home/profile_user.dart';

class availabledriverscreen extends StatelessWidget {
  int id = 0;
  availabledrivercontroller controller =
      Get.put<availabledrivercontroller>(availabledrivercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The available drivers"),
        backgroundColor: secondaryColor,
        actions: [
          /*  PopupMenuButton(
      color: Colors.white,
        child:Padding(
          padding: EdgeInsets.only(right: 10),
          child:Icon(Icons.more_vert,color: Colors.white,),
        ),
        itemBuilder: (context) =>[
          PopupMenuItem(
            child: Text('search',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            value: 'search',
          ),
          PopupMenuItem(
            child:userinformation.usertoken!='' ?
            Text('log_out',
              style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),):null,
            value: 'log_out',
          ),

          PopupMenuItem(
            child:userinformation.usertoken!='' ?
    Text('add_product',
      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
    ): null ,
            value: 'add_product',
          ),

        ],
        onSelected:(val){
          if(val=='log_out'){
            controller.onclicklogout();
            Get.offAllNamed('/login');
          }
          if(val=='add_product'){
            Navigator.of(context).pushNamed('/addproduct');
          }
          if(val=='search'){

            showSearch(context: context, delegate: Datasearch()) ;
          }
        },
      ),

        ],*/
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  id = controller.alldriver[index].id;
                  print(id);
                  // controller.onclickview();
                  Get.to(detailsdriver(), arguments: id); //arguments: id);

                  // print(id);
                },
                child: Container(
                  height: 218,
                  width: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,

                    //  margin: EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),

                              //تعليمة عرض الصورة

                              child: Image.asset(
                                'assets/images/Cre.PNG',
                                fit: BoxFit.cover,
                                height: 140,
                                width: 200,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.person_add_alt_1,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    "${controller.alldriver[index].firstName}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  ),
                                  SizedBox(width: 90),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star_sharp,
                                      color: secondaryColor,
                                    ),
                                  ),
                                  Text(
                                    "${controller.alldriver[index].role}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  ),
                                  SizedBox(width: 6),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: controller.alldriver.length,
          ),
        ),
      ),
    );
  }
}
