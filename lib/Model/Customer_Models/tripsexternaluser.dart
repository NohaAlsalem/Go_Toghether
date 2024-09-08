import 'dart:convert';
Temperatures externalusertripsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String externalusertripsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  List<AllExternalReservations> allExternalReservations;

  Temperatures({
    required this.allExternalReservations,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    allExternalReservations: List<AllExternalReservations>.from(json["All External reservations "].map((x) => AllExternalReservations.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "All External reservations ": List<dynamic>.from(allExternalReservations.map((x) => x.toJson())),
  };
}

class AllExternalReservations {
  int id;
  int userId;
  int numberOfPersons;
  int cost;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime travelDate;
  String travelTime;
  String travelDestnation;
  String travelLocation;
  String lastTimePaid;
  int isPayment;
  int paymentAmount;
  DateTime paymentCreatedAt;
  String paymentType;

  AllExternalReservations({
    required this.id,
    required this.userId,
    required this.numberOfPersons,
    required this.cost,
    required this.createdAt,
    required this.updatedAt,
    required this.travelDate,
    required this.travelTime,
    required this.travelDestnation,
    required this.travelLocation,
    required this.lastTimePaid,
    required this.isPayment,
    required this.paymentAmount,
    required this.paymentCreatedAt,
    required this.paymentType,
  });

  factory AllExternalReservations.fromRawJson(String str) => AllExternalReservations.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllExternalReservations.fromJson(Map<String, dynamic> json) => AllExternalReservations(
    id: json["id"],
    userId: json["user_id"],
    numberOfPersons: json["number_of_persons"],
    cost: json["cost"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    travelDate: DateTime.parse(json["travel_date"]),
    travelTime: json["travel_time"],
    travelDestnation: json["travel_destnation"],
    travelLocation: json["travel_location"],
    lastTimePaid: json["last_time_paid"],
    isPayment: json["is_payment"],
    paymentAmount: json["paymentAmount"],
    paymentCreatedAt: DateTime.parse(json["payment_created_at"]),
    paymentType: json["payment_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "number_of_persons": numberOfPersons,
    "cost": cost,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "travel_date": "${travelDate.year.toString().padLeft(4, '0')}-${travelDate.month.toString().padLeft(2, '0')}-${travelDate.day.toString().padLeft(2, '0')}",
    "travel_time": travelTime,
    "travel_destnation": travelDestnation,
    "travel_location": travelLocation,
    "last_time_paid": lastTimePaid,
    "is_payment": isPayment,
    "paymentAmount": paymentAmount,
    "payment_created_at": paymentCreatedAt.toIso8601String(),
    "payment_type": paymentType,
  };
}
