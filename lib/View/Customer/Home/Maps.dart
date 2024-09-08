import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Maps extends StatefulWidget {

  Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Future<void> onMap() async{
    String googleURL='https://www.google.com/maps/search';
    await canLaunchUrlString(googleURL)?await launchUrlString(googleURL):throw 'could not launch $googleURL';
  }
@override
void initState() {
  onMap();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
          child: Column(
          children: [
          Container(
          height: 270,
          width: 350,
          child:Lottie.asset('assets/images/animation_llcsyns7.json') ,
      ),


          ]),)),
    );
  }
}
