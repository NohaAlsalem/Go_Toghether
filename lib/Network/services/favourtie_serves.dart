import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/favourite_user_get.dart';
import '../APIs.dart';
class favourite{
  var url1 = Uri.parse(ServerConfig.domainserver+ ServerConfig.favouriteuserget);

  Future  < Temperatures> getfavourite(String token) async {
    print(url1);
    var response = await http.get(url1, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // if (response.statusCode == 200) {
    print(response.body);
    print(response.statusCode);
    final temperatures = favouriteFromJson(response.body);
    print("object");
    print(temperatures.favorite.name);
    print("object");
    //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
    return temperatures;
    // }
    //else
    // return null;
  }
}