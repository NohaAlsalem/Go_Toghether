import 'package:toproject2/Model/Customer_Models/Trips_Modle.dart';
import 'package:toproject2/Network/APIs.dart';
import 'package:http/http.dart' as http;
// var message;
// var url=Uri.parse(ServerConfig.domainserver+ServerConfig.getmytrips);
// Future<Trip_Modle> gettripsdo( String token) async{
//   var response=await http.get(url,headers: {
//     'Accept':'application/json',
//     'Authorization': 'Bearer oFqEEcTotjZwJVkZ0zJ98uOgr3oEKoHVt8TrggBL',
//   });
//   int id=0;
//   print(url);
//   print(response.body);
//   print(response.statusCode);
//   print(token);
//   if(response.statusCode==200){
//     //    var jsonresponse=jsonDecode(response.body);
//     // Map<String, dynamic> map = jsonDecode(response.body);
//     //var myRootNode = R.fromJson(map);
//     // final trips = tripsdetailsFromJson(response.body);
//     //var trips = Reservation.fromJson(map);
//     // print(trips.data.lastName);
//     // print(trips.data);
//     //  var products=.jsonDecode(response.body);
//     // id=trips.data.reservations[].id;
//     print(id);
//     // return trips.data ;
//   }
//   else
//     return Trip_Modle(id: 0,goal: '',travelTime:'' ,date:'',location: '',driverId: 0,finish: '',status: '',userId: 0,createdAt: '',updatedAt: '');
// }
