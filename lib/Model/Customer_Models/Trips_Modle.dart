import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:toproject2/Network/APIs.dart';

class Trip_Modle {
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

  Trip_Modle({
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

  factory Trip_Modle.TripfromJson(String str) => Trip_Modle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Trip_Modle.fromJson(Map<String, dynamic> json) => Trip_Modle(
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




