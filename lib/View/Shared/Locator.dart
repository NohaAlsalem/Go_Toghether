import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:toproject2/Controller/Customer_Controlers/googleMap_controller.dart';
import 'package:toproject2/View/Shared/common_Color.dart';
import 'package:toproject2/View/Shared/container.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class Locator extends StatelessWidget {
  Locator({Key? key}) : super(key: key);
  @override
  final googleMap controller=Get.put(googleMap());
  Future<String> _getLocation() async
  {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    debugPrint('location: ${position.latitude}');
    final coordinates = new Coordinates(position.latitude, position.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    print("${first.featureName} : ${first.addressLine}");
    return "${first.featureName} : ${first.addressLine}";
    // GeoData data = await Geocoder2.getDataFromCoordinates(
    //     latitude: 40.714224,
    //     longitude: -73.961452,
    //     googleMapApiKey: "GOOGLE_MAP_API_KEY");
    //
    // //Formated Address
    // print(data.address);
    // //City Name
    // print(data.city);
    // //Country Name
    // print(data.country);
    // //Country Code
    // print(data.countryCode);
    // //Latitude
    // print(data.latitude);
    // //Longitude
    // print(data.longitude);
    // //Postal Code
    // print(data.postalCode);
    // //State
    // print(data.state);
    // //Street Number
    // print(data.streetNumber);
  }
  // _getLocation() async
  // {
  //   Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  //   debugPrint('location: ${position.latitude}');
  //   final coordinates = new Coordinates(position.latitude, position.longitude);
  //   var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
  //   var first = addresses.first;
  //   print("${first.featureName} : ${first.addressLine}");
  // }
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

      body: Column(
        children: [
          Container(
          width: double.infinity,
          // child:Image.asset('assets/images/logo.png',fit: BoxFit.cover,) ,
          child: Lottie.asset('assets/images/animation_llcsyns7.json'),
        ),

          GetBuilder<googleMap>(
            builder:(controller)=> Container(
              child:Text('${controller.locationMessage}',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: 20,),
          shapecont(text: 'Get My Location',color:secondaryColor,fun: (){
            // shared?.setString('token', 'cbb');
            // Get.to(()=>register());
            print("jhg");

            controller.getCurrentLocation().then((value) {
              _getLocation().then((value) {
                return controller.locationMessage=value;
              });
              controller.lat='${value.latitude}';
              controller.long='${value.longitude}';
              // setState(() {
              controller.locationMessage='Latitude: ${controller.lat} ,longitude:${controller.long}';
              // });
              controller.liveLocation();
            });

            // _fcm.getToken().then((token){ print('this token : $token');});
            // Firestor.instance.collection('token').add({
            //   'token':token
            // });

          }, ),
          SizedBox(height: 30,),
          shapecont(text: 'Show On Map',color:secondaryColor,fun: () {
            // _getLocation();
            controller.onMap(controller.lat,controller.long);
          }),
        ],

      ),)
    );
  }
}
