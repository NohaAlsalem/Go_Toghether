import 'dart:convert';
Temperatures officedetailsFromJson(String str) => Temperatures.fromJson(json.decode(str));

String officedetailsToJson(Temperatures data) => json.encode(data.toJson());
class Temperatures {
  String government;
  String typeTravel;
  String star;
  int stars;
  List<Office> office;

  Temperatures({
    required this.government,
    required this.typeTravel,
    required this.star,
    required this.stars,
    required this.office,
  });

  factory Temperatures.fromRawJson(String str) => Temperatures.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    government: json["government"],
    typeTravel: json["type_Travel"],
    star: json["star"],
    stars: json["stars"],
    office: List<Office>.from(json["office"].map((x) => Office.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "government": government,
    "type_Travel": typeTravel,
    "star": star,
    "stars": stars,
    "office": List<dynamic>.from(office.map((x) => x.toJson())),
  };
}

class Office {
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
  dynamic createdAt;
  DateTime updatedAt;
  List<Car> car;
  List<Driver> driver;

  Office({
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
    required this.car,
    required this.driver,
  });

  factory Office.fromRawJson(String str) => Office.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Office.fromJson(Map<String, dynamic> json) => Office(
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
    createdAt: json["created_at"],
    updatedAt: DateTime.parse(json["updated_at"]),
    car: List<Car>.from(json["car"].map((x) => Car.fromJson(x))),
    driver: List<Driver>.from(json["driver"].map((x) => Driver.fromJson(x))),
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
    "created_at": createdAt,
    "updated_at": updatedAt.toIso8601String(),
    "car": List<dynamic>.from(car.map((x) => x.toJson())),
    "driver": List<dynamic>.from(driver.map((x) => x.toJson())),
  };
}

class Car {
  int id;
  int cost;
  String image;
  String agencyImage;
  int number;
  int colorId;
  int typeId;
  int officeId;
  int? driverId;
  DateTime createdAt;
  DateTime updatedAt;
  Driver? driver;

  Car({
    required this.id,
    required this.cost,
    required this.image,
    required this.agencyImage,
    required this.number,
    required this.colorId,
    required this.typeId,
    required this.officeId,
    required this.driverId,
    required this.createdAt,
    required this.updatedAt,
    required this.driver,
  });

  factory Car.fromRawJson(String str) => Car.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    id: json["id"],
    cost: json["cost"],
    image: json["image"],
    agencyImage: json["agency_image"],
    number: json["number"],
    colorId: json["color_id"],
    typeId: json["type_id"],
    officeId: json["office_id"],
    driverId: json["driver_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    driver: json["driver"] == null ? null : Driver.fromJson(json["driver"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cost": cost,
    "image": image,
    "agency_image": agencyImage,
    "number": number,
    "color_id": colorId,
    "type_id": typeId,
    "office_id": officeId,
    "driver_id": driverId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "driver": driver?.toJson(),
  };
}

class Driver {
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

  Driver({
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

  factory Driver.fromRawJson(String str) => Driver.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
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
