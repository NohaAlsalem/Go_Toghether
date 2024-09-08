
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';

import 'package:http/http.dart' as http;
import 'package:driverapp/config/config_aoi.dart';


class editprofileserves {
  var dio = Dio();
  var url = Uri.parse(serverconfig.domainserver + serverconfig.editprofile);
  var message;

  Future<bool> editprofileser(driverrequist driver,File file,File file1) async {

print(url);
    var a = {
      'image_driver': await MultipartFile.fromFile(file.path,
          filename: file.path.split('/').last),
      'image_agency': await MultipartFile.fromFile(file1.path,
          filename: file1.path.split('/').last),
      'phoneTwo': driver.phonetwo,
      'phoneOne':driver.phoneone,
      'password':driver.password,
      'email':driver.email,
      'first_name':driver.firstname,
      'last_name':driver.lastname,
      'adress':driver.address,
      'date_of_birth':driver.date_of_birth,
    };



    print(a);
    FormData form = FormData.fromMap(a);
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
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {}
    return false;
  }
}

