// To parse this JSON data, do
//
//     final storeHolidaysModel = storeHolidaysModelFromJson(jsonString);

import 'dart:convert';

StoreHolidaysModel storeHolidaysModelFromJson(String str) =>
    StoreHolidaysModel.fromJson(json.decode(str));

String storeHolidaysModelToJson(StoreHolidaysModel data) =>
    json.encode(data.toJson());

class StoreHolidaysModel {
  String message;
  Data data;

  StoreHolidaysModel({
    required this.message,
    required this.data,
  });

  factory StoreHolidaysModel.fromJson(Map<String, dynamic> json) =>
      StoreHolidaysModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  int id;
  int userId;
  DateTime startDate;
  DateTime endDate;
  DateTime createdAt;
  DateTime updatedAt;
  bool status;

  Data({
    required this.id,
    required this.userId,
    required this.startDate,
    required this.endDate,
    required this.createdAt,
    required this.updatedAt,
    required this.status,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userId: json["user_id"],
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "start_date":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "status": status,
      };
}
