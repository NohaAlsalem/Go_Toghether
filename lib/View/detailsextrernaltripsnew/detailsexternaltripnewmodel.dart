import 'dart:convert';
Temperatures externaldetailstripFromJson(String str) => Temperatures.fromJson(json.decode(str));

String externaldetailstripToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  List<Travel> travel;
  String nameOffice;
  String firstName;
  String lastName;

  Temperatures({
    required this.travel,
    required this.nameOffice,
    required this.firstName,
    required this.lastName,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    travel: List<Travel>.from(json["travel"].map((x) => Travel.fromJson(x))),
    nameOffice: json["name_office"],
    firstName: json["firstName"],
    lastName: json["Last_Name"],
  );

  Map<String, dynamic> toJson() => {
    "travel": List<dynamic>.from(travel.map((x) => x.toJson())),
    "name_office": nameOffice,
    "firstName": firstName,
    "Last_Name": lastName,
  };
}

class Travel {
  int id;
  DateTime date;
  String time;
  String destnation;
  String location;
  int cost;
  String status;
  String lastTimePaid;
  int driverId;
  int officeId;
  DateTime createdAt;
  DateTime updatedAt;

  Travel({
    required this.id,
    required this.date,
    required this.time,
    required this.destnation,
    required this.location,
    required this.cost,
    required this.status,
    required this.lastTimePaid,
    required this.driverId,
    required this.officeId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Travel.fromRawJson(String str) => Travel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Travel.fromJson(Map<String, dynamic> json) => Travel(
    id: json["id"],
    date: DateTime.parse(json["date"]),
    time: json["time"],
    destnation: json["destnation"],
    location: json["location"],
    cost: json["cost"],
    status: json["status"],
    lastTimePaid: json["last_time_paid"],
    driverId: json["driver_id"],
    officeId: json["office_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "time": time,
    "destnation": destnation,
    "location": location,
    "cost": cost,
    "status": status,
    "last_time_paid": lastTimePaid,
    "driver_id": driverId,
    "office_id": officeId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
