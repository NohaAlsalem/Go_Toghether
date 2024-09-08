
import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/detailsoffice_model.dart';
import '../APIs.dart';

class officeservees{

  var message;



  Future< Temperatures> getdetailsoffice(String token,int id) async {
    var url = Uri.parse(ServerConfig.domainserver+ServerConfig.officedetails+'$id');
    print(url);
    var response = await http.get(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    // if (response.statusCode == 200) {
    print(response.body);
    print(response.statusCode);
    final temperatures = officedetailsFromJson(response.body);
    print("object");
    print(url);


    //    var jsonresponse=jsonDecode(response.body);
    //  var products = productsFromJson(response.body);
    return temperatures;
    // }
    //else
    // return null;
  }
}