import 'dart:convert';
Temperatures profileuserFromJson(String str) => Temperatures.fromJson(json.decode(str));

String profileuserToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  Info info;

  Temperatures({
    required this.info,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    info: Info.fromJson(json["info"]),
  );

  Map<String, dynamic> toJson() => {
    "info": info.toJson(),
  };
}

class Info {
  int id;
  String firstname;
  String lastname;
  dynamic address;
  dynamic dateOfBirth;
  int role;
  String email;
  dynamic emailVerifiedAt;
  dynamic phoneOne;
  dynamic phoneTwo;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic profileImage;

  Info({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.address,
    required this.dateOfBirth,
    required this.role,
    required this.email,
    required this.emailVerifiedAt,
    required this.phoneOne,
    required this.phoneTwo,
    required this.createdAt,
    required this.updatedAt,
    required this.profileImage,
  });

  factory Info.fromRawJson(String str) => Info.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Info.fromJson(Map<String, dynamic> json) => Info(
    id: json["id"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    address: json["address"],
    dateOfBirth: json["date_of_birth"],
    role: json["role"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    profileImage: json["profileImage"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstname": firstname,
    "lastname": lastname,
    "address": address,
    "date_of_birth": dateOfBirth,
    "role": role,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "profileImage": profileImage,
  };
}
