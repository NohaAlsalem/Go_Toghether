// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';
Temperatures driverdetalsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String driverdetalsToJson(Temperatures data) => json.encode(data.toJson());


class Temperatures {
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
  String message;
  String imageDriverUrl;
  String imageAgencyUrl;

  Temperatures({
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
    required this.message,
    required this.imageDriverUrl,
    required this.imageAgencyUrl,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
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
    message: json["message"],
    imageDriverUrl: json["image_driver_url"],
    imageAgencyUrl: json["image_agency_url"],
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
    "message": message,
    "image_driver_url": imageDriverUrl,
    "image_agency_url": imageAgencyUrl,
  };
}
