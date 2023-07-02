// import 'dart:convert';
// import 'dart:developer';

import 'dart:convert';

import 'package:doctorapp/Urls/utils_Urls.dart';
import 'package:doctorapp/utils/common_function/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/taglistModel.dart';

// import '../model/personaldetailsmodel.dart';
class TagListService {
  Future tagListServiceFunction() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = sharedPreferences.getString(Constants.token);

      var response = await http.post(
        Uri.parse(Urls.tagList),
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode == 200) {
        // var json = jsonDecode(response.body).toString();
        // print("datas--> " + json);

        return yourBlogModelFromJson(response.body);
      } else {}
    } catch (e) {
      rethrow;
    }
  }
}
