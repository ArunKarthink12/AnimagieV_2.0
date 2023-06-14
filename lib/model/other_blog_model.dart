// To parse this JSON data, do
//
//     final otherBlogModel = otherBlogModelFromJson(jsonString);

import 'dart:convert';

List<OtherBlogModel> otherBlogModelFromJson(String str) =>
    List<OtherBlogModel>.from(
        json.decode(str).map((x) => OtherBlogModel.fromJson(x)));

String otherBlogModelToJson(List<OtherBlogModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OtherBlogModel {
  int id;
  int userId;
  String? image;
  Topic topic;
  Content content;
  String tags;
  DateTime createdAt;
  DateTime updatedAt;
  String imagePath;

  OtherBlogModel({
    required this.id,
    required this.userId,
    this.image,
    required this.topic,
    required this.content,
    required this.tags,
    required this.createdAt,
    required this.updatedAt,
    required this.imagePath,
  });

  factory OtherBlogModel.fromJson(Map<String, dynamic> json) => OtherBlogModel(
        id: json["id"],
        userId: json["user_id"],
        image: json["image"] ?? "",
        topic: topicValues.map[json["topic"]]!,
        content: contentValues.map[json["content"]]!,
        tags: json["tags"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imagePath: json["image_path"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "image": image ?? "",
        "topic": topicValues.reverse[topic],
        "content": contentValues.reverse[content],
        "tags": tags,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_path": imagePath,
      };
}

enum Content { SAMPLE_CONTENT }

final contentValues = EnumValues({"Sample content": Content.SAMPLE_CONTENT});

enum Tags { DO_CAT }

final tagsValues = EnumValues({"Do,Cat": Tags.DO_CAT});

enum Topic { TEST }

final topicValues = EnumValues({"Test": Topic.TEST});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
