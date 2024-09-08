import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../Model/Customer_Models/complaint_model.dart';
import '../../Model/Customer_Models/detailsinternaltrips.dart';
import '../APIs.dart';
import '../MiddelWare/Auth_middel.dart';

class detailstrip{

  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.complaintinternal);
  var error='';
  var token='';
  var message;

  Future<bool> complaintinternal(complaint c,String token)async{
    print(url);
    var response= await http.post(
      url,
      headers: {
        'Accept':'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {

        'text':c.text,
        'res_id':"1",

      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
    // if(response.statusCode==200){
    var responsejson=jsonDecode(response.body);
    token=responsejson['token'];
    // iddriver=responsejson['driver']['id'];
    message=responsejson['success'];

    Auth_Middel.token!=token;
    print(Auth_Middel.token!);

    return true;
  }
  var message1;

  Future  <List<Datum >> gettripsdetails( String token, int id) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.detailstrip+'$id');
    // var url=Uri.parse(ServerConfig.domainserver+ServerConfig.detailstrip+'$id');
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
      print(trips.data);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return trips.data ;
    }
    else
      return [];



  }

}