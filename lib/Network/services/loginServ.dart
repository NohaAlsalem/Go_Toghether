import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:toproject2/Model/Customer_Models/user_Model.dart';
import 'package:toproject2/Network/APIs.dart';
import 'package:http/http.dart' as http;
class loginServ {
  var dio = Dio();
  var url = Uri.parse(ServerConfig.domainserver + ServerConfig.login);
  var message;
  var error='';
  var token='';

  Future<bool> do_login(user_Model user) async {

    print(url);
    var response= await http.post(
      url,
      headers: {
        'Accept':'application/json',
      },
      body: {

        'email':user.email,
        'password':user.password ,
        'device_key':user.device_key,

      },
    );

print(response.statusCode);
print(response.body);
int iduser=0;
    var responsejson=jsonDecode(response.body);
    token=responsejson['token'];
    // iduser=responsejson['driver']['id'];
    message=responsejson['success'];

    print(iduser);
    // drivertoken.drivertokenn=token;
    // drivertoken.iddriver=iddriver;
    // print(drivertoken.drivertokenn);
    return true;
  }
}