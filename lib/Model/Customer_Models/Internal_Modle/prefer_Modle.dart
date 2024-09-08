// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

UserPrefer inPreferFromJson(String str) => UserPrefer.fromJson(json.decode(str));
String inPreferToJson(UserPrefer data) => json.encode(data.toJson());

class UserPrefer {
  int userId;
  Favorite favorite;

  UserPrefer({
    required this.userId,
    required this.favorite,
  });

  factory UserPrefer.fromJson(Map<String, dynamic> json) => UserPrefer(
    userId: json["user_id"],
    favorite: Favorite.fromJson(json["favorite"]),
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "favorite": favorite.toJson(),
  };
}

class Favorite {
  int id;
  String name;
  String description;
  int number;
  dynamic createdAt;
  dynamic updatedAt;

  Favorite({
    required this.id,
    required this.name,
    required this.description,
    required this.number,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) => Favorite(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    number: json["number"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "number": number,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
