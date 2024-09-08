import 'package:http/http.dart'as http;
import '../../Model/Customer_Models/alldrivermodel.dart';
import '../APIs.dart';




class availabledriverserves{

  var message;

  Future  <List< AllDriver>> getavailabledriver( String token) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.alldriver);
    var response=await http.get(url,headers: {
      'Accept':'application/json',
      'Authorization': 'Bearer $token',
    });

    print(url);
    print(response.body);
    print(response.statusCode);
    print(token);
    if(response.statusCode==200){
      //    var jsonresponse=jsonDecode(response.body);
      // Map<String, dynamic> map = jsonDecode(response.body);
      //var myRootNode = R.fromJson(map);
      final alldriver = alldriverFromJson(response.body);


      //var trips = Reservation.fromJson(map);
     // print(alldriver.allDriver);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);

     // print(id);
      return alldriver.allDriver ;
    }
    else
      return [];



  }






}
