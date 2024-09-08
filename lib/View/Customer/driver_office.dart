import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Customer/details_driver.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../Controller/Customer_Controlers/detailsofff_controller.dart';
import 'Home/profile_user.dart';



class driverscreen extends StatelessWidget {

  detailsofficecontroller controller =
  Get.put<detailsofficecontroller>(detailsofficecontroller());

var id=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
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
                    'The Available Driver',
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
                  itemCount:controller.detailsoffice.office[0].driver.length,
                  itemBuilder: (c, index) {
                    return GestureDetector(
                      onTap: () {
     id = controller.detailsoffice.office[0].driver[index].id;
     print(id);
    //controller.onclickview();
    Get.to(detailsdriver(),arguments: id);

    // print(id);
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10),
                              child: Container(
                                height: 120,
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
                                              Icon(Icons.person,color: Colors.orangeAccent, ),
                                              Text(
    // "${controller.detailsoffice.office[0].driver[index].firstName}",
                                                "Name:"+
                                                    "${controller.detailsoffice.office[0].driver[index].firstName}",
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
                                              Icon(Icons.star,color: Colors.orangeAccent, ),
                                              Text(
                                                "Status : "+"${controller.detailsoffice.office[0].driver[index].status}",
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
       /* child:Container (

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

          child: ListView.builder(

            itemBuilder: (context, index) {
              return InkWell(

                onTap: () {
                   //  id = controller.detailsoffice.office[0].driver[index].id;
                  // controller.onclickview();
                  Get.to(profilepage(),arguments: id);

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

                              child: Image.asset('assets/images/Capre.PNG'
                                ,fit: BoxFit.cover,height: 140,width: 200,),

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
                                    icon: Icon(Icons.person_add_alt_1,color: secondaryColor,),
                                  ),
                                  Text(
                                 'jj',// "${controller.detailsoffice.office[0].driver[index].firstName}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,color: primaryColor),
                                  ),
                                  SizedBox(width: 90),
                                ],
                              ),

                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {



                                    },
                                    icon: Icon(
                                      Icons.star_sharp,
                                      color: secondaryColor,
                                    ),
                                  ),
                                    Text(
                                      '66',//"${controller.detailsoffice.office[0].driver[index].role}",
                                       style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,
                                       color: primaryColor),),
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
            itemCount: 5,//controller.detailsoffice.office[0].driver.length,
          ),


        ),
      ),*/
      ),
    );

  }
}


