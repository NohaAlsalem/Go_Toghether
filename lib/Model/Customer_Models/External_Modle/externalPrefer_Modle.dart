import 'dart:convert';


ExPrefer exPreferFromJson(String str) => ExPrefer.fromJson(json.decode(str));

String exPreferToJson(ExPrefer data) => json.encode(data.toJson());

class ExPrefer {
  List<FavoriteOffice> favoriteOffices;

  ExPrefer({
    required this.favoriteOffices,
  });

  factory ExPrefer.fromRawJson(String str) => ExPrefer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExPrefer.fromJson(Map<String, dynamic> json) => ExPrefer(
    favoriteOffices: List<FavoriteOffice>.from(json["favorite_offices"].map((x) => FavoriteOffice.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "favorite_offices": List<dynamic>.from(favoriteOffices.map((x) => x.toJson())),
  };
}

class FavoriteOffice {
  int id;
  String name;
  String branch;
  int stars;
  String location;
  String phoneOne;
  String phoneTwo;
  String email;

  FavoriteOffice({
    required this.id,
    required this.name,
    required this.branch,
    required this.stars,
    required this.location,
    required this.phoneOne,
    required this.phoneTwo,
    required this.email,
  });

  factory FavoriteOffice.fromRawJson(String str) => FavoriteOffice.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FavoriteOffice.fromJson(Map<String, dynamic> json) => FavoriteOffice(
    id: json["id"],
    name: json["name"],
    branch: json["branch"],
    stars: json["stars"],
    location: json["location"],
    phoneOne: json["phoneOne"],
    phoneTwo: json["phoneTwo"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "branch": branch,
    "stars": stars,
    "location": location,
    "phoneOne": phoneOne,
    "phoneTwo": phoneTwo,
    "email": email,
  };
}
