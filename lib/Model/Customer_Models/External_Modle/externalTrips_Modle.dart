import 'dart:convert';



ExTrips ExTripsFromJson(String str) => ExTrips.fromJson(json.decode(str));

String ExTripsToJson(ExTrips data) => json.encode(data.toJson());
class ExTrips {
  List<Travel> travels;

  ExTrips({
    required this.travels,
  });

  factory ExTrips.fromRawJson(String str) => ExTrips.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExTrips.fromJson(Map<String, dynamic> json) => ExTrips(
    travels: List<Travel>.from(json["travels"].map((x) => Travel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "travels": List<dynamic>.from(travels.map((x) => x.toJson())),
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
  int officeId;
  int driverId;
  String officeName;
  String driverName;
  String driverPhoneOne;
  String driverPhoneTwo;

  Travel({
    required this.id,
    required this.date,
    required this.time,
    required this.destnation,
    required this.location,
    required this.cost,
    required this.status,
    required this.lastTimePaid,
    required this.officeId,
    required this.driverId,
    required this.officeName,
    required this.driverName,
    required this.driverPhoneOne,
    required this.driverPhoneTwo,
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
    officeId: json["office_id"],
    driverId: json["driver_id"],
    officeName: json["office_name"],
    driverName: json["driver_name"],
    driverPhoneOne: json["driver_phoneOne"],
    driverPhoneTwo: json["driver_phoneTwo"],
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
    "office_id": officeId,
    "driver_id": driverId,
    "office_name": officeName,
    "driver_name": driverName,
    "driver_phoneOne": driverPhoneOne,
    "driver_phoneTwo": driverPhoneTwo,
  };
}
