import 'dart:convert';
// import 'dart:developer';

import 'package:http/http.dart' as http;

// import '../../model/other_blog_model.dart';
// import '../../utils/common_function/constants.dart';
import '../../view/allpackages.dart';

class YourBlogService {
  Future yourBlogService() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    try {
      var data = {"view": "2"};

      var response = await http.post(
          Uri.parse(
              'https://jooju.in/app-demo/public/api/doctor/blog/blog-list'),
          body: data,
          headers: {
            'Authorization': 'Bearer $token',
            // 'Content-Type': 'application/json',
          });

      if (response.statusCode == 200 || response.statusCode == 201) {
        // print("servicess" + response.body.toString());
        var json = jsonDecode(response.body);
        return YourBlogModel.fromJson(json);
        // Fluttertoast.showToast(msg: "success");
        // List<YourBlogModel> apiResponse = json.decode(response.body);
        // return apiResponse
        //     .map((job) => YourBlogModel()
        //     .toList();
      } else {
        // Fluttertoast.showToast(msg: "Failed");
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
//  Fluttertoast.showToast(msg: "success");
//         var jsonres = jsonDecode(response.body);
//         return OtherBlogModel.fromJson(jsonres);
//         // List<dynamic> apiResponse = json.decode(response.body);
//         // print("servicedata${response.body}");
//         // return OtherBlogModel.fromJson(apiResponse as Map<String, dynamic>);
//         // return apiResponse
//         //     .map((job) => new OtherBlogModel.fromJson(job))
//         //     .toList();