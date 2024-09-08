import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/tripsexternaluser.dart';
import '../APIs.dart';



class extrenalusertripsserves{

  var message;

  Future  <List< AllExternalReservations>> getexternaltrips( String token) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.extedrnaltripuser);
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
      final alltrips = externalusertripsFromJson(response.body);


      //var trips = Reservation.fromJson(map);
      // print(alldriver.allDriver);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);

      // print(id);
      return alltrips.allExternalReservations;
    }
    else
      return [];



  }






}
