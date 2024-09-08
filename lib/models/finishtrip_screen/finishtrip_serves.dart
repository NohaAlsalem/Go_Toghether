import 'dart:convert';


import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/modelspost/finishtrip.dart';
import 'package:http/http.dart'as http;



class finishtripserves{

  var message;
  var url=Uri.parse(serverconfig.domainserver+serverconfig.finishtrips);
  Future  < Data> finishget( String token) async{
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer oFqEEcTotjZwJVkZ0zJ98uOgr3oEKoHVt8TrggBL',
    });
    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
      // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      final trips = finishdetailsFromJson(response.body);
      //var trips = Reservation.fromJson(map);
      print(trips.data.lastName);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return trips.data ;
    }
    else
      return Data(id: 0, firstName: '', lastName: '', email: '',
          password: '0', role: 1, imageDriver: '', imageAgency: '',
          dateOfBirth: ''
              '', status: '', address: '', officeId: 0, phoneOne: '', phoneTwo: '',
          reservations:[]);



  }






}
