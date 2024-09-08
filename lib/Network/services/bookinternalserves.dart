
import 'dart:convert';
import 'package:http/http.dart'as http;

import '../../Model/Customer_Models/internalreservationpost.dart';
import '../APIs.dart';


class bookinternalserves {

  var url = Uri.parse(ServerConfig.domainserver + ServerConfig.bookinternal);
  var error = '';

  var message;

  Future<bool> bookinternal(internalreservationpost book,String token ) async {
    print(url);
    print(book.location);
    print(book.date);
    print(book.traveltime);
    print(book.goal);
    print(book.driverid
    );
    var response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: {

       'goal':book.goal,

        'location':book.location,
        'driver_id':'2',
        'date':book.date,
        'travel_time':book.traveltime,
        'reservation_type':book.type_book,
        'num_person':book.num_person,
        'content':book.content


      },
    );
    print(response.statusCode);
    print(response.body);
    var iddriver;
    // if(response.statusCode==200){
    var responsejson = jsonDecode(response.body);
    token = responsejson['token'];
    // iddriver=responsejson['driver']['id'];
    message = responsejson['success'];



    return true;
  }
}