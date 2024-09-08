import 'dart:convert';
Temperatures availableseatsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String availableseatsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  List<AvailableSeat> availableSeats;

  Temperatures({
    required this.availableSeats,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    availableSeats: List<AvailableSeat>.from(json["available_seats"].map((x) => AvailableSeat.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "available_seats": List<dynamic>.from(availableSeats.map((x) => x.toJson())),
  };
}

class AvailableSeat {
  int id;
  int numberOfSeat;
  dynamic userId;
  int travelId;
  DateTime createdAt;
  DateTime updatedAt;

  AvailableSeat({
    required this.id,
    required this.numberOfSeat,
    required this.userId,
    required this.travelId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AvailableSeat.fromRawJson(String str) => AvailableSeat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AvailableSeat.fromJson(Map<String, dynamic> json) => AvailableSeat(
    id: json["id"],
    numberOfSeat: json["numberOfSeat"],
    userId: json["user_id"],
    travelId: json["travel_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "numberOfSeat": numberOfSeat,
    "user_id": userId,
    "travel_id": travelId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
