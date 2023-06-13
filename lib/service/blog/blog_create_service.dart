import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../../model/blog_create_model.dart';
// import '../../model/other_blog_model.dart';
import '../../utils/common_function/constants.dart';
import '../../view/allpackages.dart';

class BlogCreateService {
  Future blogCreateService({
    image,
    topic,
    content,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    var data = {
      "image": image ?? '',
      "topic": topic ?? '',
      "content": content ?? ''
    };
    try {
      var response = await http.post(
          Uri.parse('https://jooju.in/app-demo/public/api/doctor/blog/store'),
          body: data,
          headers: {
            "Accept": "application/json",
            'Authorization': 'Bearer $token',
          });

      var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        return BlogCreateModel.fromJson(jsonresponse);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
