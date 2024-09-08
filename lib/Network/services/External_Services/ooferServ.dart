import 'package:toproject2/Network/APIs.dart';
import 'package:toproject2/View/Shared/Components.dart';

import '../../../Model/Customer_Models/External_Modle/externalOffer_Modle.dart';
import '../../../Model/Customer_Models/Internal_Modle/internalOffer_Modle.dart';
import 'package:http/http.dart' as http;
class offerServ{
  var message;
  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.external_offers);

  Future<Temperatures> getOffer(String token)async{
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
      final Eoffers=exOfferFromJson(response.body);
      print(response.body);
      print(url);
      print(Eoffers.offires[0].branchName);
      print(Eoffers.offires[0].branchName);
      return Eoffers;
    }
    else {
      print('here');
      return Temperatures(offires: []);
    }
  }
}