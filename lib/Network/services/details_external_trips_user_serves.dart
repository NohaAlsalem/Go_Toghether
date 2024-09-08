import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../Model/Customer_Models/detailsexternaltripsuser.dart';
import '../../Model/Customer_Models/externalcomplaint.dart';
import '../APIs.dart';
import '../MiddelWare/Auth_middel.dart';


class externaldetailstrip{


  var message1;

  Future  < DetailsReservation> gettripsdetailsexternal( String token, int id) async{
    var url=Uri.parse(ServerConfig.domainserver+ServerConfig.detailsexternaltripsuser+"$id"
    +ServerConfig.detailsexternaltripsuser1);
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
      final trips = externaltripsdetailsFromJson(response.body);
      //var trips = Reservation.fromJson(map);
      print(trips.detailsReservation.travelTime);
      // print(trips.data);
      //  var products=.jsonDecode(response.body);
      return trips.detailsReservation ;
    }
    else
      return DetailsReservation(id: 0, userId: 0, numberOfPersons: 0, cost: 0,
          createdAt: DateTime(0,0,0), updatedAt: DateTime(0,0,0),
          travelDestnation: '', travelLocation: '', travelDate: DateTime(0,0,0),
          travelTime: '8', lastTimePaid: '', officeName: '', officeLocation: '',
          officeBranchName: '', officeBranchGoverment: '',
          driverName: '', driverPhoneTwo: '', driverPhoneOne: '', driverImage: '',
          isPayment: 0, paymentAmount: 0, paymentCreatedAt: DateTime(0,0,0),
          paymentUpdatedAt: DateTime(0,0,0), paymentType: '');



  }



  var url1=Uri.parse(ServerConfig.domainserver+ServerConfig.complainexternal);
  var error1='';
  var token1='';
  var message6;

  Future<bool> complaintexternall(complaintexternal c,String token)async{
    print(url1);
    var response= await http.post(
      url1,
      headers: {
        'Accept':'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {

        'text':c.text,
        'ex_travel_id':"1",

      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
    // if(response.statusCode==200){
    var responsejson=jsonDecode(response.body);
    token=responsejson['token'];
    // iddriver=responsejson['driver']['id'];
   // message=responsejson['success'];

    Auth_Middel.token!=token;
    print(Auth_Middel.token!);

    return true;
  }
}