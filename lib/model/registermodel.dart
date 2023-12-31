// To parse this JSON data, do
//
//     final createAccountModel = createAccountModelFromJson(jsonString);

import 'dart:convert';

CreateAccountModel createAccountModelFromJson(String str) =>
    CreateAccountModel.fromJson(json.decode(str));

String createAccountModelToJson(CreateAccountModel data) =>
    json.encode(data.toJson());

class CreateAccountModel {
  User user;
  String token;

  CreateAccountModel({
    required this.user,
    required this.token,
  });

  factory CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      CreateAccountModel(
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
      };
}

class User {
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
  dynamic type;
  dynamic address;
  dynamic city;
  dynamic state;
  dynamic pincode;
  dynamic fullName;
  dynamic district;

  User({
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
    this.type,
    this.address,
    this.city,
    this.state,
    this.pincode,
    this.fullName,
    this.district,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
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
