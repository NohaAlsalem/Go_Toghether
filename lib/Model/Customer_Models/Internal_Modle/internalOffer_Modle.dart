import 'dart:convert';


InOffers inOfferFromJson(String str) => InOffers.fromJson(json.decode(str));

String inOfferToJson(InOffers data) => json.encode(data.toJson());

class InOffers {
  List<List<Offire>> offires;

  InOffers({
    required this.offires,
  });

  factory InOffers.fromRawJson(String str) => InOffers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InOffers.fromJson(Map<String, dynamic> json) => InOffers(
    offires: List<List<Offire>>.from(json["Offires"].map((x) => List<Offire>.from(x.map((x) => Offire.fromJson(x))))),
  );

  Map<String, dynamic> toJson() => {
    "Offires": List<dynamic>.from(offires.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))),
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
