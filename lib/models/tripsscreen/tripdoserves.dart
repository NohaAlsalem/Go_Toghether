import 'dart:convert';


import 'package:driverapp/config/config_aoi.dart';
import 'package:driverapp/modelspost/dortips.dart';
import 'package:http/http.dart'as http;



class tripserves{

  var message;
  var url=Uri.parse(serverconfig.domainserver+serverconfig.getdotrips);
  Future  < Data> gettripsdo( String token) async{
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer oFqEEcTotjZwJVkZ0zJ98uOgr3oEKoHVt8TrggBL',
    });
    int id=0;
    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
     // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      final trips = tripsdetailsFromJson(response.body);
      final res=tripsdetailsFromJson(response.body);

      //var trips = Reservation.fromJson(map);
      print(trips.data.lastName);
     // print(trips.data);
    //  var products=.jsonDecode(response.body);
     // id=trips.data.reservations[].id;
      print(id);
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
