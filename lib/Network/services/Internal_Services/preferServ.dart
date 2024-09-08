import 'package:toproject2/Model/Customer_Models/External_Modle/externalPrefer_Modle.dart';
import 'package:toproject2/Network/APIs.dart';
import '../../../Model/Customer_Models/Internal_Modle/internalOffer_Modle.dart';
import 'package:http/http.dart' as http;
class preferServ{
  var message;
  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.prefer_internal);
  Future<List<FavoriteOffice>> getprefer(String token)async{
    print('gfvfgv');
    print(url);
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });

    print(response.body);
    // print(Eoffers.offires[0][0].branchName);
    print(url);

    if(response.statusCode==200){
      final prefers=exPreferFromJson(response.body);
      print(response.body);
      print(url);
      print(prefers.favoriteOffices[0].name);
      return prefers.favoriteOffices;
    }
    else {
      print('here');
      return [];
    }
  }
}