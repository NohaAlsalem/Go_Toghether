import 'dart:convert';
Temperatures officeFromJson(String str) => Temperatures.fromJson(json.decode(str));

String officeToJson(Temperatures data) => json.encode(data.toJson());


class Temperatures {
  List<AllDriver> allDriver;

  Temperatures({
    required this.allDriver,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    allDriver: List<AllDriver>.from(json["AllDriver"].map((x) => AllDriver.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "AllDriver": List<dynamic>.from(allDriver.map((x) => x.toJson())),
  };
}

class AllDriver {
  int id;
  String name;
  String status;
  int role;
  int branchId;
  int typeId;
  int starId;
  String email;
  String password;
  String location;
  String image;
  String contract;
  String phoneOne;
  String phoneTwo;
  String discreption;
  DateTime createdAt;
  DateTime updatedAt;

  AllDriver({
    required this.id,
    required this.name,
    required this.status,
    required this.role,
    required this.branchId,
    required this.typeId,
    required this.starId,
    required this.email,
    required this.password,
    required this.location,
    required this.image,
    required this.contract,
    required this.phoneOne,
    required this.phoneTwo,
    required this.discreption,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AllDriver.fromRawJson(String str) => AllDriver.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllDriver.fromJson(Map<String, dynamic> json) => AllDriver(
    id: json["id"],
    name: json["name"],
    status: json["status"],
    role: json["role"],
    branchId: json["branch_id"],
    typeId: json["type_id"],
    starId: json["star_id"],
    email: json["email"],
    password: json["password"],
    location: json["location"],
    image: json["image"],
    contract: json["contract"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    discreption: json["discreption"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
    "role": role,
    "branch_id": branchId,
    "type_id": typeId,
    "star_id": starId,
    "email": email,
    "password": password,
    "location": location,
    "image": image,
    "contract": contract,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "discreption": discreption,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

