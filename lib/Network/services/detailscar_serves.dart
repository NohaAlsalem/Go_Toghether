
import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/detailscar.dart';
import '../APIs.dart';





class detailscarserves {

  var message;
  //+"${drivertoken.iddriver}");

  Future <Temperatures> getdetailscar(String token,int id) async {
    var url = Uri.parse(ServerConfig.domainserver + ServerConfig.detailscar+'$id');
    print(url);
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // if (response.statusCode == 200) {
    print(response.body);
    print(response.statusCode);
    final temperatures = cardetailsFromJson(response.body);
    print("object");
    print(url);
    print(temperatures.color);
    print("object");
    //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
    return temperatures;
    // }
    //else
    // return null;
  }




}