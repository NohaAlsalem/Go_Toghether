import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
class notificationServ{
  sendNotification(String title,String body,String id)async{
    String serverToken='AIzaSyDElKvfWHvx66a3aq_Ao2-6Mpmsje5WRPo';
    await http.post(
        Uri.parse(''),
        headers:<String,String>{
        'Content-type':'application/json',
        'Authorization':'key$serverToken',
        },
        body:jsonEncode(<String,dynamic>{
        'priority':'heigh',
        'data':<String,dynamic>{
        'click_action':'FLUTTER_NOTIFICATION_CLICK',
        'id':id.toString(),
        "name":"noha",
        "lastname":"alsalem"
        },
        'to':await FirebaseMessaging.instance.getToken(),
    }
  ));
}

getMessage(){
  FirebaseMessaging.onMessage.listen((message) {
    print(message.notification?.title);
    print(message.data['name']);
  });
}
}