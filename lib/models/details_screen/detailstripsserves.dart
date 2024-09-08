import 'dart:convert';


import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/modelspost/detailstrip.dart';

import 'package:http/http.dart'as http;



class tripdetailsserves{

  var message;

  Future  < Message> gettripsdetails( String token, int id) async{
    var url=Uri.parse(serverconfig.domainserver+serverconfig.detailstrip+'$id');
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });
    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
      // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      final trips = tripssdetailsFromJson(response.body);
      //var trips = Reservation.fromJson(map);
      print(trips.message.goal);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return trips.message ;
    }
    else
      return Message(id: 0, goal: '', location: '', travelTime: '',
          date: DateTime(0-0-0), status: '', userId: 0, driverId: 0, finish: '') ;



  }






}
