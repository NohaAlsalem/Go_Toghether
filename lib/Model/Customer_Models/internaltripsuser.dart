import 'dart:convert';
Temperatures internalusertripsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String internalusertripsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  List<AllTripsInternal> allTripsInternal;

  Temperatures({
    required this.allTripsInternal,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    allTripsInternal: List<AllTripsInternal>.from(json["AllTripsInternal"].map((x) => AllTripsInternal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "AllTripsInternal": List<dynamic>.from(allTripsInternal.map((x) => x.toJson())),
  };
}

class AllTripsInternal {
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

  AllTripsInternal({
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
  });

  factory AllTripsInternal.fromRawJson(String str) => AllTripsInternal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllTripsInternal.fromJson(Map<String, dynamic> json) => AllTripsInternal(
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
