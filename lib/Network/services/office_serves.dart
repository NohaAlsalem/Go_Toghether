import 'dart:convert';

import 'package:http/http.dart'as http;



import '../../Model/Customer_Models/alloffice.dart';
import '../APIs.dart';





class officeserves{

  var message;

  Future <List<AllDriver>> gofffice( String token) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.allofice);
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });

    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
      // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      final alloffice = officeFromJson(response.body);


      //var trips = Reservation.fromJson(map);
      // print(alldriver.allDriver);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);

      // print(id);
      return alloffice.allDriver ;
    }
    else
      return [] ;



  }






}
