// To parse this JSON data, do
//
//     final yourBlogModel = yourBlogModelFromJson(jsonString);

import 'dart:convert';

List<YourBlogModel> yourBlogModelFromJson(String str) =>
    List<YourBlogModel>.from(
        json.decode(str).map((x) => YourBlogModel.fromJson(x)));

String yourBlogModelToJson(List<YourBlogModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class YourBlogModel {
  int id;
  int userId;
  String image;
  String topic;
  String content;
  String tags;
  DateTime createdAt;
  DateTime updatedAt;
  String imagePath;

  YourBlogModel({
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

  factory YourBlogModel.fromJson(Map<String, dynamic> json) => YourBlogModel(
        id: json["id"],
        userId: json["user_id"],
        image: json["image"],
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
