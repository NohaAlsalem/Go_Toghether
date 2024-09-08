import 'dart:convert';

Temperatures exOfferFromJson(String str) => Temperatures.fromJson(json.decode(str));

String exOfferToJson(Temperatures data) => json.encode(data.toJson());


class Temperatures {
  List<Offire> offires;

  Temperatures({
    required this.offires,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    offires: List<Offire>.from(json["Offires"].map((x) => Offire.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Offires": List<dynamic>.from(offires.map((x) => x.toJson())),
  };
}

class Offire {
  int id;
  String nameOffice;
  String branchName;
  String location;
  int officeId;
  String description;

  Offire({
    required this.id,
    required this.nameOffice,
    required this.branchName,
    required this.location,
    required this.officeId,
    required this.description,
  });

  factory Offire.fromRawJson(String str) => Offire.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Offire.fromJson(Map<String, dynamic> json) => Offire(
    id: json["id"],
    nameOffice: json["Name_Office"],
    branchName: json["Branch_Name"],
    location: json["location"],
    officeId: json["office_id"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Name_Office": nameOffice,
    "Branch_Name": branchName,
    "location": location,
    "office_id": officeId,
    "description": description,
  };
}

