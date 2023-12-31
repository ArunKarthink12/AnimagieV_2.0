// To parse this JSON data, do
//
//     final doctorDetailsModel = doctorDetailsModelFromJson(jsonString);

import 'dart:convert';

DoctorDetailsModel doctorDetailsModelFromJson(String str) =>
    DoctorDetailsModel.fromJson(json.decode(str));

String doctorDetailsModelToJson(DoctorDetailsModel data) =>
    json.encode(data.toJson());

class DoctorDetailsModel {
  int id;
  String name;
  String email;
  dynamic mobile;
  dynamic emailVerifiedAt;
  String createdAt;
  DateTime updatedAt;
  String role;
  int status;
  int isAcceptClub;
  String type;
  dynamic address;
  String city;
  String state;
  String pincode;
  dynamic fullName;
  dynamic district;

  DoctorDetailsModel({
    required this.id,
    required this.name,
    required this.email,
    this.mobile,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.role,
    required this.status,
    required this.isAcceptClub,
    required this.type,
    this.address,
    required this.city,
    required this.state,
    required this.pincode,
    this.fullName,
    this.district,
  });

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) =>
      DoctorDetailsModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        role: json["role"],
        status: json["status"],
        isAcceptClub: json["is_accept_club"],
        type: json["type"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        pincode: json["pincode"],
        fullName: json["full_name"],
        district: json["district"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt,
        "updated_at": updatedAt.toIso8601String(),
        "role": role,
        "status": status,
        "is_accept_club": isAcceptClub,
        "type": type,
        "address": address,
        "city": city,
        "state": state,
        "pincode": pincode,
        "full_name": fullName,
        "district": district,
      };
}
