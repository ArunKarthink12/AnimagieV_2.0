// To parse this JSON data, do
//
//     final kycStaticModel = kycStaticModelFromJson(jsonString);

import 'dart:convert';

KycStaticModel kycStaticModelFromJson(String str) =>
    KycStaticModel.fromJson(json.decode(str));

String kycStaticModelToJson(KycStaticModel data) => json.encode(data.toJson());

class KycStaticModel {
  List<Gender> gender;
  List<Gender> qualification;

  KycStaticModel({
    required this.gender,
    required this.qualification,
  });

  factory KycStaticModel.fromJson(Map<String, dynamic> json) => KycStaticModel(
        gender:
            List<Gender>.from(json["gender"].map((x) => Gender.fromJson(x))),
        qualification: List<Gender>.from(
            json["qualification"].map((x) => Gender.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "gender": List<dynamic>.from(gender.map((x) => x.toJson())),
        "qualification":
            List<dynamic>.from(qualification.map((x) => x.toJson())),
      };
}

class Gender {
  String title;
  int value;

  Gender({
    required this.title,
    required this.value,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
        title: json["title"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
      };
}
