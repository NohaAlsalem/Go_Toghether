import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import '../../Controller/Customer_Controlers/Internal_Controllers/bookinternal_controller.dart';
import '../../Controller/Customer_Controlers/googleMap_controller.dart';
import '../Shared/TextField.dart';
import '../Shared/container.dart';

class internalReservation extends StatelessWidget {
  internalReservation({Key? key}) : super(key: key);
var type='';
  TextEditingController dateCtl = TextEditingController();
  var bookingKey = GlobalKey<FormState>();
  googleMap control=Get.put(googleMap());
  bookinternalcontroller controller =
      Get.put<bookinternalcontroller>(bookinternalcontroller());

  _getLocation() async
  {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    debugPrint('location: ${position.latitude}');
    final coordinates = new Coordinates(position.latitude, position.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    print("${first.featureName} : ${first.addressLine}");}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: secondaryColor,
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: bookingKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textfield(
                      hint_text: 'Destination',
                      input_type: TextInputType.text,
                      onchange: (value) {
                        controller.goal = value;
                      },
                      iconprifex: Icons.location_searching,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Destination must not be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GetBuilder<googleMap>(
                            builder:(cont)=> textfield(
                              hint_text:(cont.locationMessage==null&&controller.locationColor)?'Location': '${cont.locationMessage}',
                              input_type: TextInputType.text,
                              onchange: (value) {
                                controller.location = value;
                                value=cont.locationMessage;
                              },
                              iconprifex: Icons.location_on_rounded,
                              validate: (value) {
                                if (value.isEmpty) {
                                  return 'location must not be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: GetBuilder<bookinternalcontroller>(
                            builder: (controlller) => Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: controller.locationColor==true?secondaryColor:primaryColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              onTap: (){
                                controller.defaultLoc();
                                control.getCurrentLocation().then((value) {
                                  _getLocation();
                                  control.lat='${value.latitude}';
                                  control.long='${value.longitude}';
                                  // setState(() {
                                  control.locationMessage='Latitude: ${control.lat} ,longitude:${control.long}';
                                  // });
                                  control.liveLocation();
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: controller.theColor,
                                  ),
                                  // SizedBox(
                                  //   width: 4,
                                  // ),
                                  Text(
                                    "Set Current Location",
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

                    SizedBox(
                      height: 25,
                    ),
                    textfield(
                      hint_text: 'Date',
                      input_type: TextInputType.text,
                      onchange: (value) {
                        controller.date = value;
                      },
                      onTap: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.utc(2025, 12, 30),
                        ).then((value) {
                          controller.date = DateFormat.yMMMd().format(value!);
                        });
                      },
                      iconprifex: Icons.email,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'date must be not empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    textfield(
                      hint_text: 'Time Start',
                      input_type: TextInputType.text,
                      iconprifex: Icons.phone,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'time must be not empty';
                        }
                        return null;
                      },
                      onTap: () {
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        ).then((value) {
                          controller.traveltime = value?.format(context).toString();
                        });
                      },
                      onchange: (value) {
                        controller.traveltime = value;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 8.0),
                      child: Text('Determine Type Of Reservation:',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:GetBuilder<bookinternalcontroller>(
                              builder: (controlller) =>  InkWell(
                                onTap: (){
                                  controller.type_book='personal';
                                  controller.changeType();
                                },
                                child: Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                      color: controller.theType!=true?controller.theColor:primaryColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: primaryColor,
                                      ),
                                      // SizedBox(
                                      //   width: 4,
                                      // ),
                                      Text(
                                        "Personal Reservation",
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
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GetBuilder<bookinternalcontroller>(
                              builder: (controller) =>  InkWell(
                                onTap: (){
                                  controller.type_book='box';
                                  controller.changeType();
                                },
                                child: Container(
                                  height: 55,
                                // height: 50,
                                // width: 150,
                                decoration: BoxDecoration(
                                    color:  controller.theType==true?controller.theColor:primaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)),
                                child:Row(
                                    children: [
                                      Icon(
                                        Icons.close,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "Box Reservation",
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
                        ),
                      ],
                    ),
                    GetBuilder<bookinternalcontroller>(
                      builder:(controller)=> controller.theType != true
                          ? textfield(
                              hint_text: 'Enter count of person in this reserv',
                              input_type: TextInputType.number,
                              onchange: (value) {
                                controller.numberOfPerson=value;
                              },
                              iconprifex: Icons.supervisor_account_outlined)
                          : textfield(
                              hint_text: 'Enter Contain Your Box',
                              input_type: TextInputType.text,
                              onchange: (valu) {
                                controller.conatinBox = valu;
                              },
                              iconprifex: Icons.add_box),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [],
                    ),
                    shapecont(
                        text: 'Reservation',
                        color: secondaryColor,
                        fun: () {
                          onclick();
                          if (bookingKey.currentState!.validate()) {

                            print('hiiiiiiiii');
                          }
                        }),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onclick() async {
    // EasyLoading.show(status: 'loading');
    await controller.onclickbook();
  }
}
