
import 'dart:convert';
Temperatures cardetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String cardetailsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  List<Car> car;
  String color;
  String type;
  String driverfirst;
  String driverlast;

  Temperatures({
    required this.car,
    required this.color,
    required this.type,
    required this.driverfirst,
    required this.driverlast,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    car: List<Car>.from(json["car"].map((x) => Car.fromJson(x))),
    color: json["color"],
    type: json["type"],
    driverfirst: json["driverfirst"],
    driverlast: json["driverlast"],
  );

  Map<String, dynamic> toJson() => {
    "car": List<dynamic>.from(car.map((x) => x.toJson())),
    "color": color,
    "type": type,
    "driverfirst": driverfirst,
    "driverlast": driverlast,
  };
}

class Car {
  int id;
  int cost;
  String image;
  String agencyImage;
  int number;
  int colorId;
  int typeId;
  int officeId;
  int driverId;
  DateTime createdAt;
  DateTime updatedAt;

  Car({
    required this.id,
    required this.cost,
    required this.image,
    required this.agencyImage,
    required this.number,
    required this.colorId,
    required this.typeId,
    required this.officeId,
    required this.driverId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    id: json["id"],
    cost: json["cost"],
    image: json["image"],
    agencyImage: json["agency_image"],
    number: json["number"],
    colorId: json["color_id"],
    typeId: json["type_id"],
    officeId: json["office_id"],
    driverId: json["driver_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cost": cost,
    "image": image,
    "agency_image": agencyImage,
    "number": number,
    "color_id": colorId,
    "type_id": typeId,
    "office_id": officeId,
    "driver_id": driverId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
