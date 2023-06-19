// import 'dart:io';

// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/blog_create_model.dart';
import '../../utils/utils.dart';
// import '../../model/other_blog_model.dart';
// import '../../utils/common_function/constants.dart';
// import '../../view/allpackages.dart';

class BlogCreateService {
  Future blogCreateService({
    image,
    topic,
    content,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    String fileNames = '';
//  var file = File('path/to/file.jpg'); // Replace with the correct file path

//     if (await file.exists()) {
//       var formData = FormData.fromMap({
//         'file': await MultipartFile.fromFile(file.path),
//       });var response = await dio.post(
//         'YOUR_UPLOAD_URL',
//         data: formData,
//       );

//       print(response.data);
//     }
    if (image != '') {
      print("Filename-->$image");
      fileNames = image.toString().split('/').last;
      print("Filename-->$fileNames");
    }
    try {
      Dio dio = Dio();

      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          image.toString(),
          filename: fileNames.toString(),
          // contentType: MediaType(
          //   "image",
          //   "jpg",
          // ),
        ),
        "topic": topic.toString(),
        "content": content.toString()
      });
      Response response = await dio.post(
          'https://jooju.in/app-demo/public/api/doctor/blog/store',
          data: formData,
          options: Options(headers: {
            "Accept": "application/json",
            'Authorization': 'Bearer $token',
          }));
      // body: data,
      // headers: {
      //   "Accept": "application/json",
      //   'Authorization': 'Bearer $token',
      // });

      // var jsonresponse = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // print("print-->" + response.data);
        // print(response.headers);
        // print(response.requestOptions);
        print(response.statusCode);
        return BlogCreateModel.fromJson(response.data);
      } else {
        print(response.statusCode);
        return null;
      }
    } catch (e) {
      if (e is DioException) {
        var response = e.response;
        if (response != null) {
          print('Request failed with status code ${response.statusCode}');
          print('Error response: ${response.data}');
        } else {
          print('Request failed with an error');
        }
      } else {
        print('Error: $e');
      }
    }
  }
}
