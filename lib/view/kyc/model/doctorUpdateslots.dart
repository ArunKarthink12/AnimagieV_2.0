// To parse this JSON data, do
//
//     final doctorUpdateSlotsModel = doctorUpdateSlotsModelFromJson(jsonString);

import 'dart:convert';

DoctorUpdateSlotsModel doctorUpdateSlotsModelFromJson(String str) =>
    DoctorUpdateSlotsModel.fromJson(json.decode(str));

String doctorUpdateSlotsModelToJson(DoctorUpdateSlotsModel data) =>
    json.encode(data.toJson());

class DoctorUpdateSlotsModel {
  String message;
  List<Datum> data;

  DoctorUpdateSlotsModel({
    required this.message,
    required this.data,
  });

  factory DoctorUpdateSlotsModel.fromJson(Map<String, dynamic> json) =>
      DoctorUpdateSlotsModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  int userId;
  int dayOfWeek;
  String startTime;
  String endTime;
  int slotType;
  DateTime createdAt;
  DateTime updatedAt;
  int status;

  Datum({
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
