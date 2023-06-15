// To parse this JSON data, do
//
//     final doctorSlotsModel = doctorSlotsModelFromJson(jsonString);

import 'dart:convert';

List<DoctorSlotsModel> doctorSlotsModelFromJson(String str) =>
    List<DoctorSlotsModel>.from(
        json.decode(str).map((x) => DoctorSlotsModel.fromJson(x)));

String doctorSlotsModelToJson(List<DoctorSlotsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorSlotsModel {
  String dayOfWeek;
  List<The1> morning;
  Afternoon afternoon;

  DoctorSlotsModel({
    required this.dayOfWeek,
    required this.morning,
    required this.afternoon,
  });

  factory DoctorSlotsModel.fromJson(Map<String, dynamic> json) =>
      DoctorSlotsModel(
        dayOfWeek: json["day_of_week"],
        morning: List<The1>.from(json["morning"].map((x) => The1.fromJson(x))),
        afternoon: Afternoon.fromJson(json["afternoon"]),
      );

  Map<String, dynamic> toJson() => {
        "day_of_week": dayOfWeek,
        "morning": List<dynamic>.from(morning.map((x) => x.toJson())),
        "afternoon": afternoon.toJson(),
      };
}

class Afternoon {
  The1 the1;

  Afternoon({
    required this.the1,
  });

  factory Afternoon.fromJson(Map<String, dynamic> json) => Afternoon(
        the1: The1.fromJson(json["1"]),
      );

  Map<String, dynamic> toJson() => {
        "1": the1.toJson(),
      };
}

class The1 {
  int id;
  int userId;
  int dayOfWeek;
  String startTime;
  String endTime;
  int slotType;
  DateTime createdAt;
  DateTime updatedAt;
  int status;

  The1({
    required this.id,
    required this.userId,
    required this.dayOfWeek,
    required this.startTime,
    required this.endTime,
    required this.slotType,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory The1.fromJson(Map<String, dynamic> json) => The1(
        id: json["id"],
        userId: json["user_id"],
        dayOfWeek: json["day_of_week"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        slotType: json["slot_type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "day_of_week": dayOfWeek,
        "start_time": startTime,
        "end_time": endTime,
        "slot_type": slotType,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "status": status,
      };
}
