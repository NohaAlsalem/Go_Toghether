import 'dart:convert';
Temperatures externaltripsdetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String externaltripsdetailsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  DetailsReservation detailsReservation;

  Temperatures({
    required this.detailsReservation,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    detailsReservation: DetailsReservation.fromJson(json["DetailsReservation"]),
  );

  Map<String, dynamic> toJson() => {
    "DetailsReservation": detailsReservation.toJson(),
  };
}

class DetailsReservation {
  int id;
  int userId;
  int numberOfPersons;
  int cost;
  DateTime createdAt;
  DateTime updatedAt;
  String travelDestnation;
  String travelLocation;
  DateTime travelDate;
  String travelTime;
  String lastTimePaid;
  String officeName;
  String officeLocation;
  String officeBranchName;
  String officeBranchGoverment;
  String driverName;
  String driverPhoneTwo;
  String driverPhoneOne;
  String driverImage;
  int isPayment;
  int paymentAmount;
  DateTime paymentCreatedAt;
  DateTime paymentUpdatedAt;
  String paymentType;

  DetailsReservation({
    required this.id,
    required this.userId,
    required this.numberOfPersons,
    required this.cost,
    required this.createdAt,
    required this.updatedAt,
    required this.travelDestnation,
    required this.travelLocation,
    required this.travelDate,
    required this.travelTime,
    required this.lastTimePaid,
    required this.officeName,
    required this.officeLocation,
    required this.officeBranchName,
    required this.officeBranchGoverment,
    required this.driverName,
    required this.driverPhoneTwo,
    required this.driverPhoneOne,
    required this.driverImage,
    required this.isPayment,
    required this.paymentAmount,
    required this.paymentCreatedAt,
    required this.paymentUpdatedAt,
    required this.paymentType,
  });

  factory DetailsReservation.fromRawJson(String str) => DetailsReservation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DetailsReservation.fromJson(Map<String, dynamic> json) => DetailsReservation(
    id: json["id"],
    userId: json["user_id"],
    numberOfPersons: json["number_of_persons"],
    cost: json["cost"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    travelDestnation: json["travel_destnation"],
    travelLocation: json["travel_location"],
    travelDate: DateTime.parse(json["travel_date"]),
    travelTime: json["travel_time"],
    lastTimePaid: json["last_time_paid"],
    officeName: json["office_name"],
    officeLocation: json["office_location"],
    officeBranchName: json["office_branch_name"],
    officeBranchGoverment: json["office_branch_goverment"],
    driverName: json["driver_name "],
    driverPhoneTwo: json["driver_phoneTwo"],
    driverPhoneOne: json["driver_phoneOne"],
    driverImage: json["driver_image"],
    isPayment: json["is_payment"],
    paymentAmount: json["paymentAmount"],
    paymentCreatedAt: DateTime.parse(json["payment_created_at"]),
    paymentUpdatedAt: DateTime.parse(json["payment_updated_at"]),
    paymentType: json["payment_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "number_of_persons": numberOfPersons,
    "cost": cost,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "travel_destnation": travelDestnation,
    "travel_location": travelLocation,
    "travel_date": "${travelDate.year.toString().padLeft(4, '0')}-${travelDate.month.toString().padLeft(2, '0')}-${travelDate.day.toString().padLeft(2, '0')}",
    "travel_time": travelTime,
    "last_time_paid": lastTimePaid,
    "office_name": officeName,
    "office_location": officeLocation,
    "office_branch_name": officeBranchName,
    "office_branch_goverment": officeBranchGoverment,
    "driver_name ": driverName,
    "driver_phoneTwo": driverPhoneTwo,
    "driver_phoneOne": driverPhoneOne,
    "driver_image": driverImage,
    "is_payment": isPayment,
    "paymentAmount": paymentAmount,
    "payment_created_at": paymentCreatedAt.toIso8601String(),
    "payment_updated_at": paymentUpdatedAt.toIso8601String(),
    "payment_type": paymentType,
  };
}
