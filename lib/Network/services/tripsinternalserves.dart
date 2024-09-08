import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/internaltripsuser.dart';
import '../APIs.dart';
class internalusertripsserves{

  var message;

  Future  <List< AllTripsInternal>> getinternaltrips( String token) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.internaltripuser);
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
      final alltrips = internalusertripsFromJson(response.body);


      //var trips = Reservation.fromJson(map);
      // print(alldriver.allDriver);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);

      // print(id);
      return alltrips.allTripsInternal;
    }
    else
      return [];



  }






}
