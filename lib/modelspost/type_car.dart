import 'dart:convert';
Temperatures typecarFromJson(String str) => Temperatures.fromJson(json.decode(str));

String typecarToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Temperatures({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    id: json["id"],
    name: json["name"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
