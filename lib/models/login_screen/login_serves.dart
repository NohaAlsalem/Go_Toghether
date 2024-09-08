import 'dart:convert';
import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/config/drivertoken.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';
import 'package:http/http.dart' as http;

class loginserves{

  var url=Uri.parse(serverconfig.domainserver+serverconfig.login);
  var error='';
  var token='';
  var message;

  Future<bool> login(driverrequist driver )async{
    print(url);
    var response= await http.post(
      url,
      headers: {
        'Accept':'application/json',
      },
      body: {

        'email':driver.email,
        'password':driver.password ,

      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
   // if(response.statusCode==200){
      var responsejson=jsonDecode(response.body);
      token=responsejson['token'];
    iddriver=responsejson['driver']['id'];
      message=responsejson['success'];
      print(iddriver);
      drivertoken.drivertokenn=token;
      drivertoken.iddriver=iddriver;
print(drivertoken.drivertokenn);

   return true;
  }

}