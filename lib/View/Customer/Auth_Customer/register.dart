import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toproject2/Controller/Customer_Controlers/Auth_Controller/register_controller.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/Auth_binding.dart';
import 'package:toproject2/View/Customer/Auth_Customer/signIn.dart';
import 'package:toproject2/View/Customer/addwalletuser.dart';
import 'package:toproject2/View/Shared/TextField.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/Shared/container.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:toproject2/main.dart';

class register extends StatefulWidget {
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var rigesterk = GlobalKey<FormState>();
  var selcettype;
  // List typelist = ['Hotel', 'Flight', 'Cars', 'Resturent'];
  File pickedimage = new File('');
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  registerController controller = Get.find();
  // registerController controller=Get.put(registerController());
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: secondaryColor,
                      backgroundImage: image != null ? FileImage(image!) : null,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            pickImage().then((value) {
                              print(value);
                              controller.profileImage = image;
                            });
                          },
                          // onPressed: () => pickImage(ImageSource.camera),
                          child: Icon(
                            Icons.photo_camera_back_outlined,
                            size: 30,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Form(
                  key: rigesterk,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 12.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: textfield(
                                hint_text: 'first_name',
                                input_type: TextInputType.text,
                                onchange: (value) {
                                  controller.firstName = value;
                                },
                                iconprifex: Icons.person,
                                validate: (value) {
                                  if (value.isEmpty) {
                                    return 'first_name must not be empty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: textfield(
                                hint_text: 'last_name',
                                input_type: TextInputType.text,
                                onchange: (value) {
                                  controller.lastName = value;
                                },
                                iconprifex: Icons.person,
                                validate: (value) {
                                  if (value.isEmpty) {
                                    return 'last_name must not be empty';
                                  }

                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      textfield(
                        hint_text: 'Email',
                        input_type: TextInputType.text,
                        onchange: (value) {
                          controller.email = value;
                        },
                        iconprifex: Icons.email,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'Email must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      GetBuilder<registerController>(
                        builder: (controller) => textfield(
                          hint_text: 'Password',
                          iconprifex: Icons.lock_clock_outlined,
                          input_type: TextInputType.visiblePassword,
                          password: controller.ispassword,
                          suffix: controller.ispassword
                              ? Icons.visibility_off_sharp
                              : Icons.visibility,
                          suffixPressd: () {
                            controller.encodePassword();
                            // setState(() {
                            //   isPassword = !isPassword;
                            // });
                          },
                          onchange: (value) {
                            controller.password = value;
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'password must not be empty';
                            }
                            if (value.length <= 6) {
                              return 'pleas enter password >6';
                            }

                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      textfield(
                        hint_text: 'phone',
                        input_type: TextInputType.text,
                        onchange: (value) {
                          controller.phoneOne = value;
                        },
                        iconprifex: Icons.phone,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'phone must not be empty';
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      textfield(
                        hint_text: 'phone',
                        input_type: TextInputType.text,
                        onchange: (value) {
                          controller.phoneTwo = value;
                        },
                        iconprifex: Icons.phone,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'phone must not be empty';
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      textfield(
                        hint_text: 'address',
                        input_type: TextInputType.text,
                        onchange: (value) {
                          controller.address = value;
                        },
                        iconprifex: Icons.location_on,
                        validate: (value) {
                          if (value.isEmpty) {
                            return 'address must not be empty';
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      // textfield(
                      //   hint_text: 'phone',
                      //   input_type: TextInputType.text,
                      //   onchange: (value) {
                      //     //   controller.stars=value;
                      //   },
                      //   iconprifex: Icons.phone,
                      //   validate: (value) {
                      //     if (value.isEmpty) {
                      //       return 'phone must not be empty';
                      //     }
                      //
                      //     return null;
                      //   },
                      // ),
                      GetBuilder<registerController>(
                        builder: (controller) => RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: secondaryColor,
                          ),
                          onRatingUpdate: (rating) {
                            controller.stars = rating as int;
                            print(rating);
                          },
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      shapecont(
                          text: 'Sign up',
                          color: secondaryColor,
                          fun: () {
                            if (rigesterk.currentState!.validate()) {
                              print('hiiiiiiiii');
                              print(controller.stars);
                              // print(image?.path);
                              print(controller.profileImage?.path);
                              controller.Register().then((value){
                                //print(controller.token);
                              //
                                 Get.to(signIn(),binding: login_bind());
                              });
                              if (controller.status == true) {}
                            }
                          }),
                      SizedBox(
                        height: 40,
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
  } // Future<void>
}
