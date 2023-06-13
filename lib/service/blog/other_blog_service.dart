import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

// import '../../model/other_blog_model.dart';
// import '../../utils/common_function/constants.dart';
import '../../view/allpackages.dart';

class OtherBlogService {
  Future otherBlogService() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    var data = {"view": '2'};
    try {
      var response = await http.post(
          Uri.parse(
              'https://jooju.in/app-demo/public/api/doctor/blog/blog-list'),
          body: data,
          headers: {
            "Accept": "application/json",
            'Authorization': 'Bearer $token',
          });

      // var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse
            .map((job) => new OtherBlogModel.fromJson(job))
            .toList();
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
