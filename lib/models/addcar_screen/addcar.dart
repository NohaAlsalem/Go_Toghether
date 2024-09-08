


import 'dart:io';

import 'package:driverapp/colors.dart';
import 'package:driverapp/components/container.dart';
import 'package:driverapp/components/textfeild.dart';
import 'package:driverapp/models/addcar_screen/addcar_controller.dart';
import 'package:driverapp/models/addcar_screen/addcar_serves.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';


class addcar extends StatefulWidget {

  @override
  State<addcar> createState() => _addcarState();
}

class _addcarState extends State<addcar> {




  addcarcontroller controller =
  Get.put<addcarcontroller>(addcarcontroller());

  addcarsrves serves = addcarsrves();


  File pickedimage = new File('');


  final ImagePicker picker = ImagePicker();

  Future<void> pickimage(ImageSource src) async {
    print('no image selected');
    final pickedimagefile = await picker.getImage(source: src);
    print('no image selected');
    if (pickedimagefile != null) {
      print('no image selected');
      setState(() {
        pickedimage = File(pickedimagefile.path);
      });
    } else {
      print('no image selected');
    }
  }
  File pickedimage1 = new File('');


  final ImagePicker picker1 = ImagePicker();

  Future<void> pickimage1(ImageSource src) async {
    print('no image selected');
    final pickedimagefile1 = await picker1.getImage(source: src);
    print('no image selected');
    if (pickedimagefile1 != null) {
      print('no image selected');
      setState(() {
        pickedimage1 = File(pickedimagefile1.path);
      });
    } else {
      print('no image selected');
    }
  }
  File pickedimage3 = new File('');


  final ImagePicker picker2 = ImagePicker();

  Future<void> pickimage2(ImageSource src) async {
    print('no image selected');
    final pickedimagefile2 = await picker2.getImage(source: src);
    print('no image selected');
    if (pickedimagefile2 != null) {
      print('no image selected');
      setState(() {
        pickedimage3 = File(pickedimagefile2.path);
      });
    } else {
      print('no image selected');
    }
  }
  File pickedimage4 = new File('');


  final ImagePicker picker3 = ImagePicker();

  Future<void> pickimage3(ImageSource src) async {
    print('no image selected');
    final pickedimagefile3 = await picker3.getImage(source: src);
    print('no image selected');
    if (pickedimagefile3 != null) {
      print('no image selected');
      setState(() {
        pickedimage3 = File(pickedimagefile3.path);
      });
    } else {
      print('no image selected');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.001, 0.8, 0.001],
            colors: [
              primaryColor,
              Colors.white,
              Colors.white,
            ],
          )),

    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,),
      body:

      SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 22,),
              Text("Add your car ",
                style: TextStyle(color: primaryColor,fontSize: 25,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 35,),
            //  SizedBox(height: 22,),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: secondaryColor,
                    backgroundImage:
                    pickedimage != null ? FileImage(pickedimage) : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () => pickimage(ImageSource.camera),
                        icon: Icon(Icons.photo_camera_back_outlined),
                        label: Text(
                          'add image\n from camera',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () => pickimage(ImageSource.gallery),
                        icon: Icon(Icons.image_outlined),
                        label: Text(
                          'add image\n from gallery',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
SizedBox(height: 22,),
                      textfield(
                        hint_text: 'Color',

                        input_type: TextInputType.text,

                        onchange: (value) {
                            controller.color = value;
                        },

                        iconprifex:Icons.color_lens,

                        validate: (value ){
                          if(value.isEmpty){
                            return 'color must not be empty';
                          }



                          return null;
                        },
                      ),


              SizedBox(height: 25,),
              textfield(
                hint_text: 'cost',

                input_type: TextInputType.text,

                onchange: (value) {
                    controller.cost = value;
                },

                iconprifex:Icons.person,

                validate: (value ){
                  if(value.isEmpty){
                    return 'cost must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'type_car',

                input_type: TextInputType.text,

                onchange: (value) {
                  controller.typecar = value;
                },

                iconprifex:Icons.car_rental,

                validate: (value ){
                  if(value.isEmpty){
                    return 'type_car must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),


              textfield(
                hint_text: 'machine number',

                input_type: TextInputType.text,

                onchange: (value) {
                  controller.number = value;
                },

                iconprifex:Icons.car_rental,

                validate: (value ){
                  if(value.isEmpty){
                    return 'machine number must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),
              textfield(
                hint_text: 'show',

                input_type: TextInputType.text,

                onchange: (value) {
                  controller.show = value;
                },

                iconprifex:Icons.car_rental,

                validate: (value ){
                  if(value.isEmpty){
                    return 'show must not be empty';
                  }



                  return null;
                },
              ),
             // SizedBox(height: 25,),


            //  Column(
              SizedBox(height: 35,),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(
    //color: primaryColor.withOpacity(0.2),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
    children: [
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //  children: [
                      FlatButton.icon(
                        onPressed: () => pickimage1(ImageSource.camera),
                        icon: Icon(Icons.photo_camera_back_outlined),
                        label: Text(
                          'add image\n from camera',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () => pickimage1(ImageSource.gallery),
                        icon: Icon(Icons.image_outlined),
                        label: Text(
                          'add image\n from gallery',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
    ),
              ),









              SizedBox(height: 42,),

Text("Add your information",style: TextStyle(color: primaryColor,fontSize: 17,fontWeight: FontWeight.bold),),

              SizedBox(height: 42,),
              Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: primaryColor,
                    backgroundImage:
                    pickedimage3 != null ? FileImage(pickedimage3) : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () => pickimage2(ImageSource.camera),
                        icon: Icon(Icons.photo_camera_back_outlined),
                        label: Text(
                          'add image\n from camera',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () => pickimage2(ImageSource.gallery),
                        icon: Icon(Icons.image_outlined),
                        label: Text(
                          'add image\n from gallery',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 22,),

              SizedBox(height: 35,),

              textfield(
                hint_text: 'Email',

                input_type: TextInputType.text,

                onchange: (value) {
                //  controller.email = value;
                },

                iconprifex:Icons.person,

                validate: (value ){
                  if(value.isEmpty){
                    return 'Email must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),
              textfield(
                hint_text: 'Password',
                iconprifex:Icons.lock_clock_outlined,
                input_type: TextInputType.text,
                onchange: (value) {
                //  controller.password = value;
                },

                validate: (value) {
                  if (value.isEmpty) {
                    return 'password must not be empty';
                  }

                  if (value.length < 3) {
                    return 'password must not be short';
                  }
                  return null;
                },

              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'phone',
                input_type: TextInputType.text,
                onchange:(value){
                 // controller.phoneone=value;
                },
                iconprifex:Icons.phone,

                validate: (value ){
                  if(value.isEmpty){
                    return 'phone must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'phone',
                input_type: TextInputType.text,
                onchange:(value){
                 // controller.phonetwo=value;
                },
                iconprifex:Icons.phone,

                validate: (value ){
                  if(value.isEmpty){
                    return 'phone must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'address',
                input_type: TextInputType.text,
                onchange:(value){
                //  controller.address=value;
                },
                iconprifex:Icons.location_on,

                validate: (value ){
                  if(value.isEmpty){
                    return 'address must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'first_name',
                input_type: TextInputType.text,
                onchange:(value){
                 // controller.firstname=value;
                },
                iconprifex:Icons.person,

                validate: (value ){
                  if(value.isEmpty){
                    return 'first_name must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'last_name',
                input_type: TextInputType.text,
                onchange:(value){
                //  controller.lastname=value;
                },
                iconprifex:Icons.person_add,

                validate: (value ){
                  if(value.isEmpty){
                    return 'last_name must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 25,),

              textfield(
                hint_text: 'date_of_birth',
                input_type: TextInputType.text,
                onchange:(value){
                 // controller.date_of_birth=value;
                },
                iconprifex:Icons.date_range,

                validate: (value ){
                  if(value.isEmpty){
                    return 'date_of_birth must not be empty';
                  }



                  return null;
                },
              ),
              SizedBox(height: 26,),
              FlatButton.icon(
                onPressed: () {

                },
                icon: Icon(Icons.image_outlined,color: primaryColor,),
                label: Text(
                  'add driving certificate',
                  style:
                  TextStyle(color: primaryColor, fontSize: 20),
                ),
              ),

              Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () => pickimage3(ImageSource.camera),
                        icon: Icon(Icons.photo_camera_back_outlined),
                        label: Text(
                          'add image\n from camera',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () => pickimage3(ImageSource.gallery),
                        icon: Icon(Icons.image_outlined),
                        label: Text(
                          'add image\n from gallery',
                          style:
                          TextStyle(color: primaryColor, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),









              SizedBox(height: 40,),
              shapecont(text: 'Add',color:primaryColor,fun: (){
                onclickadd();
              }, ),


              SizedBox(height: 40,),
            ],
          ),
        ),
      ),

    ),

    );

  }
  Future<void> onclickadd() async {
    // EasyLoading.show(status: 'loading');

    await controller.registeronclick(pickedimage,pickedimage1,pickedimage3,pickedimage4);
  }

}
