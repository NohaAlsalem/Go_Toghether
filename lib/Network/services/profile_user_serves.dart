
import 'dart:convert';

import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/profile_user.dart';
import '../APIs.dart';

class getprofile {

  var message;
  var url = Uri.parse(ServerConfig.domainserver + ServerConfig.profileuser);

  Future< Temperatures> getprofilee(String token) async {
    print(url);
    var response = await http.post(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // if (response.statusCode == 200) {
    print(response.body);
    print(response.statusCode);
    final temperatures = profileuserFromJson(response.body);
    print("object");
    print(temperatures.info.email);
    print("object");
    //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
    return temperatures;
    // }
    //else
    // return null;
  }




}