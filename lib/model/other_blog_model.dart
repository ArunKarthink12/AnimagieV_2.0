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
  String image;
  Topic topic;
  Content content;
  Tags tags;
  DateTime createdAt;
  DateTime updatedAt;
  String imagePath;

  OtherBlogModel({
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

  factory OtherBlogModel.fromJson(Map<String, dynamic> json) {
    final IMAGE = json['image'];
    // final USERID = json['user_id'];
    // final ID = json['id'];
    // final TOPIC = json['topic'];
    // final TAGS = json['tags'];
    // final CONTENT = json['content'];
    if (IMAGE != null) {
      return OtherBlogModel(
        id: json["id"],
        userId: json["user_id"],
        image: json["image"],
        topic: topicValues.map[json["topic"]]!,
        content: contentValues.map[json["content"]]!,
        tags: tagsValues.map[json["tags"]]!,
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imagePath: json["image_path"],
      );
    } else {
      return OtherBlogModel(
        id: 1,
        userId: 2,
        image: '',
        topic: topicValues.map[json["topic"]]!,
        content: contentValues.map[json["content"]]!,
        tags: tagsValues.map[json["tags"]]!,
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        imagePath: json["image_path"],
      );
    }
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "image": image,
        "topic": topicValues.reverse[topic],
        "content": contentValues.reverse[content],
        "tags": tagsValues.reverse[tags],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "image_path": imagePath,
      };
}

enum Content { SAMPLE_CONTENT }

final contentValues = EnumValues({"Sample content": Content.SAMPLE_CONTENT});

enum Tags { DO_CAT, EMPTY }

final tagsValues = EnumValues({"Do,Cat": Tags.DO_CAT, "": Tags.EMPTY});

enum Topic { TEST, NAME }

final topicValues = EnumValues({"name": Topic.NAME, "Test": Topic.TEST});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
