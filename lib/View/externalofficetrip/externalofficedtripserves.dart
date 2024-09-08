import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toproject2/Network/APIs.dart';
import 'package:toproject2/View/externalofficetrip/externalofficetripmodel.dart';




class externaltripoffceservees{


  var message1;

  Future  < Temperatures> externaltripoffcen( String token,int id) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.externaltripoffice+'$id');
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
      final trips = externalofficetripFromJson(response.body);
      //var trips = Reservation.fromJson(map);
      //   print(trips.detailsReservation.travelTime);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return trips ;
    }
    else
      return Temperatures(office:'' , externel: []);



  }




}