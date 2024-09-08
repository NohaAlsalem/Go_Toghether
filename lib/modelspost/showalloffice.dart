

import 'dart:convert';

Temperatures productsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String productsToJson(Temperatures data) => json.encode(data.toJson());


class Temperatures {
  The0 the0;
  The0 the1;
  The0 the2;
  String message;

  Temperatures({
    required this.the0,
    required this.the1,
    required this.the2,
    required this.message,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    the0: The0.fromJson(json["0"]),
    the1: The0.fromJson(json["1"]),
    the2: The0.fromJson(json["2"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0.toJson(),
    "1": the1.toJson(),
    "2": the2.toJson(),
    "message": message,
  };
}

class The0 {
  int id;
  String phoneTwo;
  String phoneOne;
  String contract;
  String image;
  String location;
  String name;
  int typeId;
  int starId;
  int branchId;

  The0({
    required this.id,
    required this.phoneTwo,
    required this.phoneOne,
    required this.contract,
    required this.image,
    required this.location,
    required this.name,
    required this.typeId,
    required this.starId,
    required this.branchId,
  });

  factory The0.fromRawJson(String str) => The0.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The0.fromJson(Map<String, dynamic> json) => The0(
    id: json["id"],
    phoneTwo: json["phoneTwo"],
    phoneOne: json["phoneOne"],
    contract: json["contract"],
    image: json["image"],
    location: json["location"],
    name: json["name"],
    typeId: json["type_id"],
    starId: json["star_id"],
    branchId: json["branch_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "phoneTwo": phoneTwo,
    "phoneOne": phoneOne,
    "contract": contract,
    "image": image,
    "location": location,
    "name": name,
    "type_id": typeId,
    "star_id": starId,
    "branch_id": branchId,
  };
}
