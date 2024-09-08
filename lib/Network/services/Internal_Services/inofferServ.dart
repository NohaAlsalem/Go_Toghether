import 'package:toproject2/Network/APIs.dart';
import 'package:toproject2/View/Shared/Components.dart';

import '../../../Model/Customer_Models/External_Modle/externalOffer_Modle.dart';
import '../../../Model/Customer_Models/Internal_Modle/internalOffer_Modle.dart';
import 'package:http/http.dart' as http;
class inofferServ{
  var message;
  var url=Uri.parse(ServerConfig.domainserver+ServerConfig.internal_offers);

  Future<InOffers> getIOffer(String token)async{
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
      final Ioffers=inOfferFromJson(response.body);
      print(response.body);
      print(url);
      print(Ioffers.offires[0][0].branchName);
      print(Ioffers.offires[0][0].branchName);
      return Ioffers;
    }
    else {
      print('here');
      return InOffers(offires: [[]]);
    }
  }
}