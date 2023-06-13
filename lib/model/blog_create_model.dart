// To parse this JSON data, do
//
//     final blogCreateModel = blogCreateModelFromJson(jsonString);

import 'dart:convert';

BlogCreateModel blogCreateModelFromJson(String str) => BlogCreateModel.fromJson(json.decode(str));

String blogCreateModelToJson(BlogCreateModel data) => json.encode(data.toJson());

class BlogCreateModel {
    String message;
    Data data;

    BlogCreateModel({
        required this.message,
        required this.data,
    });

    factory BlogCreateModel.fromJson(Map<String, dynamic> json) => BlogCreateModel(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    String topic;
    String content;
    String tags;
    int userId;
    DateTime updatedAt;
    DateTime createdAt;
    int id;
    String imagePath;

    Data({
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
