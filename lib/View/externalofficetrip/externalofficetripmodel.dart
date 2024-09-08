import 'dart:convert';
Temperatures externalofficetripFromJson(String str) => Temperatures.fromJson(json.decode(str));

String externalofficetripToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  String office;
  List<Externel> externel;

  Temperatures({
    required this.office,
    required this.externel,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    office: json["office"],
    externel: List<Externel>.from(json["Externel"].map((x) => Externel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "office": office,
    "Externel": List<dynamic>.from(externel.map((x) => x.toJson())),
  };
}

class Externel {
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

  Externel({
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

  factory Externel.fromRawJson(String str) => Externel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Externel.fromJson(Map<String, dynamic> json) => Externel(
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
