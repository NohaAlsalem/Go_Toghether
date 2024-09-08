import 'dart:convert';
import 'package:http/http.dart'as http;


import '../../Model/Customer_Models/getondriver.dart';
import '../../Model/Customer_Models/rating.dart';
import '../APIs.dart';

class getprofile {

  var message;
  //+"${drivertoken.iddriver}");

  Future< Temperatures> getdetailsdriver(String token,int id) async {
    var url = Uri.parse(ServerConfig.domainserver + ServerConfig.getonedriver+'$id');
    print(url);
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // if (response.statusCode == 200) {
    print(url);
    print(response.body);
    print(response.statusCode);
    final temperatures = driverdetalsFromJson(response.body);
    print("object");
    print(url);
    print(temperatures.email);
    print("object");
    //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
    return temperatures;
    // }
    //else
    // return null;
  }







  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.rating);
  var error='';
  var token='';
  var message1;

  Future<bool> ratingg(rating rating ,String token)async{
    print(url);
    print(rating.comment);
    print(rating.nuberstar);
    var response= await http.post(
      url,
      headers: {
        'Accept':'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {
        'rating':rating.nuberstar.toString(),
        'comment':rating.comment,
        'driver_id':'1',


      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
    // if(response.statusCode==200){
    var responsejson=jsonDecode(response.body);
   // token=responsejson['token'];
    // iddriver=responsejson['driver']['id'];
   // message=responsejson['success'];



    return true;
  }
}