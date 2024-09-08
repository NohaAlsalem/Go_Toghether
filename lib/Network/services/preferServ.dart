import 'package:toproject2/Model/Customer_Models/Internal_Modle/prefer_Modle.dart';
import 'package:toproject2/Network/APIs.dart';
import 'package:http/http.dart' as http;

class preferServ{
  var message;
var url=Uri.parse(ServerConfig.domainserver+ServerConfig.prefer_internal);

Future<Favorite> getFav( String token) async{
  var response=await http.get(url,headers: {
    'Accept':'application/json',
    'Authorization': 'Bearer $token',
  });
  print(url);
  print(response.body);
  print(response.statusCode);
  print(token);
  if(response.statusCode==200){
    final  favorite = inPreferFromJson(response.body);
    print(favorite.favorite);
    //var trips = Reservation.fromJson(map);

    // print(trips.data);
    //  var products=.jsonDecode(response.body);
    return favorite.favorite;
  }
  else
    return Favorite(id:0,name: '',number: 2,description: '',createdAt: '',updatedAt: '');


}
}