import 'package:http/http.dart' as http;
import 'package:toproject2/Model/Customer_Models/External_Modle/externalTrips_Modle.dart';
import 'package:toproject2/Network/APIs.dart';
class prefertripServ{
  var message;
  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.external_trips);
  Future<List<Travel>> gettripprefer(String token)async{
    print('gfvfgv');
    print('$url jmnbv cx');
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });

    print(response.body);
    // print(Eoffers.offires[0][0].branchName);
    print(url);

    if(response.statusCode==200){
      final Trips=ExTripsFromJson(response.body);
      print(response.body);
      print(url);
      print(Trips.travels[0].status);
      return Trips.travels;
    }
    else {
      print('here');
      return [];
    }
  }
}