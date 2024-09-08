
import 'dart:convert';

import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/modelspost/getprofile.dart';
import 'package:http/http.dart'as http;



class getprofile {

  var message;
  var url = Uri.parse(serverconfig.domainserver + serverconfig.getprofile+"${drivertoken.iddriver}");

  Future< The0> getprofilee(String token) async {
    print(url);
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
   // if (response.statusCode == 200) {
    print(response.body);
    print(response.statusCode);
    final temperatures = productsdetailsFromJson(response.body);
    print("object");
print(temperatures.the0.email);
    print("object");
      //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
      return temperatures.the0;
   // }
    //else
     // return null;
  }
}