import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:toproject2/Model/Customer_Models/user_Model.dart';
import '../APIs.dart';

class registerServ{
  var dio = Dio();
  var url = Uri.parse(ServerConfig.domainserver + ServerConfig.register);
  var message;
  var token;

  Future<bool> do_register(user_Model user,File file) async {
// print(file.name);
    print("$url");
    Map<String,dynamic> newuser = {
    'firstname':user.firstname,
      'device_key':user.device_key,
    'lastname':user.lastname,
      'email':user.email,
      'password':user.password,
    'phoneOne':user.phoneOne,
    'phoneTwo':user.phoneTwo,
      'stars':'3',
      'address':user.address,
        'profileImage': await MultipartFile.fromFile(file.path, filename:file.path.split('/').last),
    };


    print(newuser);
    FormData form = FormData.fromMap(newuser);
    print(form);
    try {
      Response response = await dio.post(
        '$url',
        options: Options(headers: {
          'Accept': 'application/json',
        }),
        data: form,
      );
      print(response.data);
      print(response.statusCode);
      var responsejson=jsonDecode(response.data);
      token=responsejson['token'];
      print('''''');
      print(token);

      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {}
    return false;
  }
}
