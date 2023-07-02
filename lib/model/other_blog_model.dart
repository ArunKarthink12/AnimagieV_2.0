// To parse this JSON data, do
//
//     final yourBlogModel = yourBlogModelFromJson(jsonString);

import 'dart:convert';

YourBlogModel yourBlogModelFromJson(String str) =>
    YourBlogModel.fromJson(json.decode(str));

String yourBlogModelToJson(YourBlogModel data) => json.encode(data.toJson());

class YourBlogModel {
  String status;
  String message;
  List<Datum> data;

  YourBlogModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory YourBlogModel.fromJson(Map<String, dynamic> json) => YourBlogModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  int userId;
  String image;
  String topic;
  String content;
  String tags;
  DateTime createdAt;
  DateTime updatedAt;
  String imagePath;

  Datum({
    required this.id,
    required this.userId,
    required this.image,
    required this.topic,
    required this.content,
    required this.tags,
    required this.createdAt,
    required this.updatedAt,
    required this.imagePath,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        image: json["image"] == null ? "" : json["image"],
        topic: json["topic"],
        content: json["content"],
        tags: json["tags"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "image": image,
        "topic": topic,
        "content": content,
        "tags": tags,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_path": imagePath,
      };
}
