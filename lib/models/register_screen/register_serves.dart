
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:driverapp/modelspost/driverrequest_model.dart';
import 'package:driverapp/modelspost/showalloffice.dart';

import 'package:http/http.dart' as http;
import 'package:driverapp/config/config_aoi.dart';


class requistdriver {
  var dio = Dio();
  var url = Uri.parse(serverconfig.domainserver + serverconfig.joinrequsetdriver);
  var message;

  Future<bool> requisdriver(driverrequist driver,File file,File file1) async {
print(file.path);
print(url);
/*String imagePath = 'path_to_your_image.jpg';
FormData formData = FormData.fromMap({
  'image': await MultipartFile.fromFile(imagePath),
  'name': 'John Doe',
  'age': 30,
});*/
    var a = {

      'image_driver':
    await MultipartFile.fromFile(file.path,
        filename: file.path.split('/').last),
      'image_agency':
      await MultipartFile.fromFile(file1.path, filename: file1.path.split('/').last),
      'phoneTwo': driver.phonetwo,
     'phoneOne':driver.phoneone,
      'password':driver.password,
      'email':driver.email,
      'first_name':driver.firstname,
      'last_name':driver.lastname,
      'adress':driver.address,
      'date_of_birth':driver.date_of_birth,
      'office_id':"1"
    };



    print(a);
    FormData form = FormData.fromMap(a);
print(form.length);
    print("fat");
    try {
      Response response = await dio.post(
        '$url',
        options: Options(headers: {
          'Accept': 'application/json',

        }),
        data: form,
      );
/*try{
var response= await http.post(
  url,
  headers: {
    'Accept':'application/json',
  },
  body: {

    'email':driver.email,
    'password':driver.password ,

  },
);*/
      print("jdddd");
      print(response.statusCode);
      print(response.data);
print("jdddd");
      if (response.statusCode == 200) {
        return true;

      }
    } catch (e) {}
    return false;
  }













  var message1;
  var url1=Uri.parse(serverconfig.domainserver+serverconfig.showoffice);
  Future <Temperatures> showoffice( String token) async{
    var response=await http.get(url1,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer oFqEEcTotjZwJVkZ0zJ98uOgr3oEKoHVt8TrggBL',
    });
    print(url);
    print(response.body);
    print(response.statusCode);
  //  print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
      // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      var office = productsFromJson(response.body);
      //var trips = Reservation.fromJson(map);
      print("kn");
      print(office.the0.name);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return office ;
    }
    else
      return new Temperatures(the0: The0(id: 0, phoneTwo: '', phoneOne: ''
          '', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
          , branchId: 0), the1:The0(id: 0, phoneTwo: '', phoneOne: ''
          '', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
          , branchId: 0), the2: The0(id: 0, phoneTwo: '', phoneOne: ''
      '', contract: '', image: '', location: '', name: '', typeId: 0, starId: 0
      , branchId: 0), message: '');



  }
}

