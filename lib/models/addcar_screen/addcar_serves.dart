
import 'dart:io';
import 'package:dio/dio.dart';


import 'package:driverapp/modelspost/addcar_model.dart';


import 'package:http/http.dart' as http;
import 'package:driverapp/config/config_aoi.dart';


class addcarsrves {
  var dio = Dio();
  var url = Uri.parse(serverconfig.domainserver + serverconfig.addcar);
  var message;

  Future<bool> addcars(addcarmodel car,File file,File file1,File file2,File file3) async {

print("$url");
    var a = {
      'image': await MultipartFile.fromFile(file.path,
          filename: file.path.split('/').last),
      'agency_image': await MultipartFile.fromFile(file1.path,
          filename: file1.path.split('/').last),
      'cost': car.cost,
      'number':car.number,
      'color':car.color,
      'type_car':car.type_car,
      'driver_id':'1',
      'office_id':'2',
      'image_driver': await MultipartFile.fromFile(file2.path,
          filename: file.path.split('/').last),
      'image_agency': await MultipartFile.fromFile(file3.path,
          filename: file1.path.split('/').last),
      'phoneTwo': car.phonetwo,
      'phoneOne':car.phoneone,
      'password':car.password,
      'email':car.email,
      'first_name':car.firstname,
      'last_name':car.lastname,
      'adress':car.address,
      'date_of_birth':car.date_of_birth,
      'office_id':"1"

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
      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {}
    return false;
  }
}

