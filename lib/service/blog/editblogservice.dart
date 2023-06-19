// import 'dart:io';

// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:doctorapp/model/editblocmodel.dart';
// import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// import '../../model/blog_create_model.dart';
import '../../utils/utils.dart';
// import '../../model/other_blog_model.dart';
// import '../../utils/common_function/constants.dart';
// import '../../view/allpackages.dart';

class EditBlogService {
  Future editBlogService({
    image,
    topic,
    id,
    content,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    // String fileNames = '';

    // if (image != '') {
    //   print("Filename-->$image");
    //   fileNames = image.toString().split('/').last;
    //   print("Filename-->$fileNames");
    // }
    var fileUrl = 'https://example.com/path/to/file.jpg';
    try {
      Dio dio = Dio();

      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          fileUrl,
          filename: "file.jpg",
          // contentType: MediaType(
          //   "image",
          //   "jpg",
          // ),
        ),
        "topic": topic.toString(),
        "content": content.toString(),
        "id": 48,
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
        return EditBlogModel.fromJson(response.data);
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
