import 'dart:convert';
Temperatures alldriverFromJson(String str) => Temperatures.fromJson(json.decode(str));

String alldriverToJson(Temperatures data) => json.encode(data.toJson());
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
  String firstName;
  String lastName;
  String email;
  String password;
  int role;
  String imageDriver;
  String imageAgency;
  String dateOfBirth;
  String status;
  String address;
  int officeId;
  String phoneOne;
  String phoneTwo;
  dynamic createdAt;
  dynamic updatedAt;

  AllDriver({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.role,
    required this.imageDriver,
    required this.imageAgency,
    required this.dateOfBirth,
    required this.status,
    required this.address,
    required this.officeId,
    required this.phoneOne,
    required this.phoneTwo,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AllDriver.fromRawJson(String str) => AllDriver.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllDriver.fromJson(Map<String, dynamic> json) => AllDriver(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    password: json["password"],
    role: json["role"],
    imageDriver: json["image_driver"],
    imageAgency: json["image_agency"],
    dateOfBirth: json["date_of_birth"],
    status: json["status"],
    address: json["address"],
    officeId: json["office_id"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "password": password,
    "role": role,
    "image_driver": imageDriver,
    "image_agency": imageAgency,
    "date_of_birth": dateOfBirth,
    "status": status,
    "address": address,
    "office_id": officeId,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
