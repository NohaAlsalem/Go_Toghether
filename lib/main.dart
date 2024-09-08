import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/Auth_binding.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/Home_bind.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/googlemap_binding.dart';
import 'package:toproject2/Controller/Customer_Controlers/Bindings/office_bindings.dart';
import 'package:toproject2/View/Customer/Home/home_Base.dart';
import 'package:toproject2/Network/MiddelWare/Auth_middel.dart';
import 'package:toproject2/View/Customer/Auth_Customer/register.dart';
import 'package:toproject2/View/Customer/Auth_Customer/signIn.dart';
import 'package:get/get.dart';
import 'package:toproject2/View/Shared/Locator.dart';
import 'Controller/Customer_Controlers/Bindings/SubHome.dart';
import 'Controller/Customer_Controlers/Bindings/bookexternal_bindings.dart';
import 'Controller/Customer_Controlers/Bindings/bookinternal_bindings.dart';
import 'Controller/Customer_Controlers/Bindings/cars_available_bindings.dart';
import 'Controller/Customer_Controlers/Bindings/detailsoffice_binding.dart';
import 'Controller/Customer_Controlers/Bindings/driver_available_bindings.dart';
import 'Controller/Customer_Controlers/Bindings/trips_user_bindings.dart';
import 'View/Customer/Home/Home.dart';
import 'View/Customer/bookexternal.dart';
import 'View/Customer/bookinternal.dart';
import 'View/Customer/cars_available_screen.dart';
import 'View/Customer/detailsoff_scfreen.dart';
import 'View/Customer/drivers_available_screen.dart';
import 'View/Customer/Home/office_screen.dart';
import 'View/Customer/Home/trips_user.dart';

SharedPreferences ?shared;

// var fcm=FirebaseMessaging.instance;
initialmessage()async{
  var msg=await FirebaseMessaging.instance.getInitialMessage();
  if(msg!=null){
    // Navigator.pushNamed(context, '/home');
  }
}


Future<void> backgroundMessage(RemoteMessage message) async{

}
void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
shared?.clear();

// fcm.getToken().then((token) {  print('this$token'); } );
//on terminated
FirebaseMessaging.onBackgroundMessage(backgroundMessage);

shared=await SharedPreferences.getInstance();
// shared?.setString('token','token');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//oninit
//   fcm.getToken().then((token) {
//   print(token);
//   } );

//   FirebaseMessaging.onMessage.listen((event) {
//   print(event.notification?.title);
//   // print(event.senderId);
//   AwesomeDialog(context:context,title:'${event.notification?.title}',body: Text('${event.notification?.body}'));
//   });

// //عند الضغط على الاشعار والتطبيق في الخلفية
//   //(عند الضغط على الاشعار في حالة الباك غراند)تعمل فقط في حالة اغلاق التطبيق ولا تعمل في حالة terminated
//   FirebaseMessaging.onMessageOpenedApp.listen((message) {
//   Navigator.pushNamed(context, '/home');
//   });
//
//   //عند الضغط على الاشعار والتطبيق مغلق بالمرة
//   initialmessage();
//   //
//   // var user=FirebaseAuth.instance.currentUser;
//   // print(user?.email);



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      debugShowCheckedModeBanner: false,
      getPages:[
        GetPage(name: '/', page:()=> signIn(),middlewares:[Auth_Middel()],binding: login_bind()),
        GetPage(name: '/l', page:()=> register(),binding: register_bind()),
        GetPage(name: '/m', page:()=> internaltripsuserScreen()),
        GetPage(name: '/home', page:()=> home_Base(),binding: Home_Bind()),
        GetPage(name: '/n', page:()=> Home(),binding:subHome_binding()),
        GetPage(name: '/h', page: () => officeScreen(),binding: officebinding()),
        GetPage(name: '/mm', page: () => Locator(),binding: map_Bind()),
        GetPage(name: '/detailsoffice', page: () => DetailofficeScreen(),binding: detailsofficebinding()),
        GetPage(name: '/caravailable', page: () => carsavailableScreen(),binding: availablecarsbinding()),
        GetPage(name: '/tripsuser', page: () => internaltripsuserScreen(),binding: tripsuserbinding()),
        GetPage(name: '/availabledrivers', page: () => availabledriverscreen(),binding: availabledriverebinding()),
        GetPage(name: '/hhh', page: () => externalReservation(),binding: bookexternalbinding()),
        GetPage(name: '/internalbook', page: () => internalReservation(),binding: bookinternalbinding()),
      ],
      // home:signIn(),
    );
  }
}

