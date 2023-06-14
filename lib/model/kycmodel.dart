// To parse this JSON data, do
//
//     final kycModel = kycModelFromJson(jsonString);

import 'dart:convert';

KycModel kycModelFromJson(String str) => KycModel.fromJson(json.decode(str));

String kycModelToJson(KycModel data) => json.encode(data.toJson());

class KycModel {
  String message;
  Data data;
  PercentageOfFilling percentageOfFilling;

  KycModel({
    required this.message,
    required this.data,
    required this.percentageOfFilling,
  });

  factory KycModel.fromJson(Map<String, dynamic> json) => KycModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
        percentageOfFilling:
            PercentageOfFilling.fromJson(json["percentage_of_filling"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
        "percentage_of_filling": percentageOfFilling.toJson(),
      };
}

class Data {
  int id;
  int userId;
  String name;
  dynamic profilePic;
  String gender;
  String mobile;
  String qualification;
  String qualificationDetails;
  String councilRegistrationNumber;
  String experience;
  String adhaarNumber;
  dynamic adhaarPic;
  dynamic panNumber;
  String panPic;
  dynamic degreeDocument;
  dynamic licenseDocument;
  dynamic clinicName;
  dynamic clinicAddress;
  dynamic clinicLogo;
  dynamic signPic;
  int bookingActivateStatus;
  DateTime createdAt;
  DateTime updatedAt;
  String genderName;
  String qualificationName;
  String filePath;

  Data({
    required this.id,
    required this.userId,
    required this.name,
    this.profilePic,
    required this.gender,
    required this.mobile,
    required this.qualification,
    required this.qualificationDetails,
    required this.councilRegistrationNumber,
    required this.experience,
    required this.adhaarNumber,
    this.adhaarPic,
    this.panNumber,
    required this.panPic,
    this.degreeDocument,
    this.licenseDocument,
    this.clinicName,
    this.clinicAddress,
    this.clinicLogo,
    this.signPic,
    required this.bookingActivateStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.genderName,
    required this.qualificationName,
    required this.filePath,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        profilePic: json["profile_pic"],
        gender: json["gender"],
        mobile: json["mobile"],
        qualification: json["qualification"],
        qualificationDetails: json["qualification_details"],
        councilRegistrationNumber: json["council_registration_number"],
        experience: json["experience"],
        adhaarNumber: json["adhaar_number"],
        adhaarPic: json["adhaar_pic"],
        panNumber: json["pan_number"],
        panPic: json["pan_pic"],
        degreeDocument: json["degree_document"],
        licenseDocument: json["license_document"],
        clinicName: json["clinic_name"],
        clinicAddress: json["clinic_address"],
        clinicLogo: json["clinic_logo"],
        signPic: json["sign_pic"],
        bookingActivateStatus: json["booking_activate_status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        genderName: json["gender_name"],
        qualificationName: json["qualification_name"],
        filePath: json["file_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "profile_pic": profilePic,
        "gender": gender,
        "mobile": mobile,
        "qualification": qualification,
        "qualification_details": qualificationDetails,
        "council_registration_number": councilRegistrationNumber,
        "experience": experience,
        "adhaar_number": adhaarNumber,
        "adhaar_pic": adhaarPic,
        "pan_number": panNumber,
        "pan_pic": panPic,
        "degree_document": degreeDocument,
        "license_document": licenseDocument,
        "clinic_name": clinicName,
        "clinic_address": clinicAddress,
        "clinic_logo": clinicLogo,
        "sign_pic": signPic,
        "booking_activate_status": bookingActivateStatus,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "gender_name": genderName,
        "qualification_name": qualificationName,
        "file_path": filePath,
      };
}

class PercentageOfFilling {
  int percentageFilled;

  PercentageOfFilling({
    required this.percentageFilled,
  });

  factory PercentageOfFilling.fromJson(Map<String, dynamic> json) =>
      PercentageOfFilling(
        percentageFilled: json["percentage_filled"],
      );

  Map<String, dynamic> toJson() => {
        "percentage_filled": percentageFilled,
      };
}
