import 'dart:io';

import 'package:driverapp/colors.dart';
import 'package:driverapp/components/container.dart';
import 'package:driverapp/components/textfeild.dart';
import 'package:driverapp/models/addcar_screen/addcar.dart';
import 'package:driverapp/models/editprofile_screen/editprofile_controller.dart';
import 'package:driverapp/models/editprofile_screen/editprofile_serves.dart';
import 'package:driverapp/models/homepage_screen/homepage.dart';
import 'package:driverapp/models/login_screen/login.dart';
import 'package:driverapp/models/register_screen/register_controller.dart';
import 'package:driverapp/models/register_screen/register_serves.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
class editprofile extends StatefulWidget {


  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  editprofilkecontroller controller =
  Get.put<editprofilkecontroller>(editprofilkecontroller());

  editprofileserves serves = editprofileserves();
  var selcettype;

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
    final pickedimagefile1 = await picker.getImage(source: src);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(

              children: [
                SizedBox(height: 42,),
                Text("Edit your information ",style: TextStyle(color: primaryColor,
                fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 42,),
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

                SizedBox(height: 35,),

                textfield(
                  hint_text: 'Email',

                  input_type: TextInputType.text,

                  onchange: (value) {
                    controller.email = value;
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
                    controller.password = value;
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
                    controller.phoneone=value;
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
                    controller.phonetwo=value;
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
                    controller.address=value;
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
                    controller.firstname=value;
                  },
                  iconprifex:Icons.location_on,

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
                    controller.lastname=value;
                  },
                  iconprifex:Icons.location_on,

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
                    controller.date_of_birth=value;
                  },
                  iconprifex:Icons.location_on,

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
                  icon: Icon(Icons.image_outlined,color: secondaryColor,),
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
                  ],
                ),




                SizedBox(height: 40,),
                shapecont(text: 'Edit',color:secondaryColor,fun: (){
                  onclickadd();

                   // Get.to(addcar());
                  }
                ),





                SizedBox(height: 40,),
              ],
            ),
          ),
        ),

      ),
    );
  }
  Future<void> onclickadd() async {
    //EasyLoading.show(status: 'loading');

    await controller.editonclick(pickedimage,pickedimage1);
  }
}

