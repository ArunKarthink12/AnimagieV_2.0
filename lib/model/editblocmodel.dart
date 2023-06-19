// To parse this JSON data, do
//
//     final editBlogModel = editBlogModelFromJson(jsonString);

import 'dart:convert';

EditBlogModel editBlogModelFromJson(String str) =>
    EditBlogModel.fromJson(json.decode(str));

String editBlogModelToJson(EditBlogModel data) => json.encode(data.toJson());

class EditBlogModel {
  String message;
  Data data;

  EditBlogModel({
    required this.message,
    required this.data,
  });

  factory EditBlogModel.fromJson(Map<String, dynamic> json) => EditBlogModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  String image;
  String topic;
  String content;
  String tags;
  int userId;
  DateTime updatedAt;
  DateTime createdAt;
  int id;
  String imagePath;

  Data({
    required this.image,
    required this.topic,
    required this.content,
    required this.tags,
    required this.userId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
    required this.imagePath,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        image: json["image"],
        topic: json["topic"],
        content: json["content"],
        tags: json["tags"],
        userId: json["user_id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "topic": topic,
        "content": content,
        "tags": tags,
        "user_id": userId,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
        "image_path": imagePath,
      };
}
