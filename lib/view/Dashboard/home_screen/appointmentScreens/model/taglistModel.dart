// To parse this JSON data, do
//
//     final yourBlogModel = yourBlogModelFromJson(jsonString);

import 'dart:convert';

List<String> yourBlogModelFromJson(String str) =>
    List<String>.from(json.decode(str).map((x) => x));

String yourBlogModelToJson(List<String> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x)));
