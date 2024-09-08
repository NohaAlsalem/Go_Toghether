// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';
Temperatures tripssdetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String tripssdetailsToJson(Temperatures data) => json.encode(data.toJson());


class Temperatures {
  List<Datum> data;

  Temperatures({
    required this.data,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int id;
  String goal;
  String location;
  String travelTime;
  DateTime date;
  String status;
  int userId;
  int driverId;
  DateTime createdAt;
  DateTime updatedAt;
  String finish;
  Driver driver;

  Datum({
    required this.id,
    required this.goal,
    required this.location,
    required this.travelTime,
    required this.date,
    required this.status,
    required this.userId,
    required this.driverId,
    required this.createdAt,
    required this.updatedAt,
    required this.finish,
    required this.driver,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    goal: json["goal"],
    location: json["location"],
    travelTime: json["travel_time"],
    date: DateTime.parse(json["date"]),
    status: json["status"],
    userId: json["user_id"],
    driverId: json["driver_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    finish: json["finish"],
    driver: Driver.fromJson(json["driver"]),
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
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "finish": finish,
    "driver": driver.toJson(),
  };
}

class Driver {
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
  DateTime createdAt;
  DateTime updatedAt;

  Driver({
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
    required this.createdAt,
    required this.updatedAt,
  });

  factory Driver.fromRawJson(String str) => Driver.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
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
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
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
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
