import 'package:http/http.dart'as http;
import 'package:toproject2/Network/MiddelWare/user_con.dart';

import '../../Model/Customer_Models/available_seats.dart';
import '../APIs.dart';
class bookexternalserves{
  Future  <List< AvailableSeat>> getallseatsavailable(String token) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.availableseat+"${usertoken.externaltripid}"+ServerConfig.availableseat22);
    print(url);
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });

    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    // if(response.statusCode==200){
    //    var jsonresponse=jsonDecode(response.body);
    // Map<String, dynamic> map = jsonDecode(response.body);
    //var myRootNode = R.fromJson(map);
    final allseats = availableseatsFromJson(response.body);


    //var trips = Reservation.fromJson(map);
    // print(alldriver.allDriver);
    // print(trips.data);
    //  var products=.jsonDecode(response.body);

    // print(id);
    return allseats.availableSeats;




  }
}