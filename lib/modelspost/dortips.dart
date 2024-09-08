// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';
Temperatures tripsdetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String tripsdetailsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  int the0;
  Data data;
  String message;

  Temperatures({
    required this.the0,
    required this.data,
    required this.message,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    the0: json["0"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0,
    "data": data.toJson(),
    "message": message,
  };
}

class Data {
  int id;
  String firstName;
  String lastName;
  String email;
  String password;
  int role;
  String imageDriver;
  String imageAgency;
  String dateOfBirth;
  String status;
  String address;
  int officeId;
  String phoneOne;
  String phoneTwo;
  dynamic createdAt;
  dynamic updatedAt;
  List<Reservation>  reservations;

  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.role,
    required this.imageDriver,
    required this.imageAgency,
    required this.dateOfBirth,
    required this.status,
    required this.address,
    required this.officeId,
    required this.phoneOne,
    required this.phoneTwo,
    this.createdAt,
    this.updatedAt,
    required this.reservations,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    password: json["password"],
    role: json["role"],
    imageDriver: json["image_driver"],
    imageAgency: json["image_agency"],
    dateOfBirth: json["date_of_birth"],
    status: json["status"],
    address: json["address"],
    officeId: json["office_id"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    reservations: List<Reservation>.from(json["reservations"].map((x) => Reservation.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "password": password,
    "role": role,
    "image_driver": imageDriver,
    "image_agency": imageAgency,
    "date_of_birth": dateOfBirth,
    "status": status,
    "address": address,
    "office_id": officeId,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "reservations": List<dynamic>.from(reservations.map((x) => x.toJson())),
  };
}

class Reservation {
  int id;
  String goal;
  String location;
  String travelTime;
  DateTime date;
  String status;
  int userId;
  int driverId;
  dynamic createdAt;
  dynamic updatedAt;
  String finish;

  Reservation({
    required this.id,
    required this.goal,
    required this.location,
    required this.travelTime,
    required this.date,
    required this.status,
    required this.userId,
    required this.driverId,
    this.createdAt,
    this.updatedAt,
    required this.finish,
  });

  factory Reservation.fromRawJson(String str) => Reservation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Reservation.fromJson(Map<String, dynamic> json) => Reservation(
    id: json["id"],
    goal: json["goal"],
    location: json["location"],
    travelTime: json["travel_time"],
    date: DateTime.parse(json["date"]),
    status: json["status"],
    userId: json["user_id"],
    driverId: json["driver_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    finish: json["finish"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "goal": goal,
    "location": location,
    "travel_time": travelTime,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "status": status,
    "user_id": userId,
    "driver_id": driverId,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "finish": finish,
  };
}
