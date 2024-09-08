// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';
Temperatures productsdetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String productsdetailsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  The0 the0;
  String message;

  Temperatures({
    required this.the0,
    required this.message,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    the0: The0.fromJson(json["0"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0.toJson(),
    "message": message,
  };
}

class The0 {
  int id;
  String firstName;
  String lastName;
  String imageDriver;
  String dateOfBirth;
  String email;
  String phoneOne;
  String phoneTwo;
  String address;
  String imageAgency;

  The0({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.imageDriver,
    required this.dateOfBirth,
    required this.email,
    required this.phoneOne,
    required this.phoneTwo,
    required this.address,
    required this.imageAgency,
  });

  factory The0.fromRawJson(String str) => The0.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The0.fromJson(Map<String, dynamic> json) => The0(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    imageDriver: json["image_driver"],
    dateOfBirth: json["date_of_birth"],
    email: json["email"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    address: json["address"],
    imageAgency: json["image_agency"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "image_driver": imageDriver,
    "date_of_birth": dateOfBirth,
    "email": email,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "address": address,
    "image_agency": imageAgency,
  };
}