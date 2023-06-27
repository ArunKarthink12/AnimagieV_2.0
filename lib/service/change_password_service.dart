import 'dart:convert';
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../model/change_password_model.dart';
import '../utils/common_function/constants.dart';

class ChangePasswordService {
  Future<ChangePasswordModel?> changePasswordService(
      {email, password, password_confirmation}) async {
    try {
      var data = {
        "email": email.toString(),
        "password": password.toString(),
        "password_confirmation": password_confirmation.toString(),
      };
      // log(data.toString());
      var response = await http.post(
          Uri.parse(
              'https://jooju.in/app-demo/public/api/change-doctor-password'),
          // headers: {'Authorization': 'Bearer $token'},
          body: data);
      // log('responseeee-------${response.body.toString()}');

      var jsonresponse = jsonDecode(response.body);
      // log('jsonrespose----${jsonresponse}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        // if (jsonresponse['status'] == 'success') {
        // print("confirm");
        Fluttertoast.showToast(msg: "success");

        return ChangePasswordModel.fromJson(jsonresponse);
        // }
        // else {
        // Fluttertoast.showToast(
        //     msg: jsonresponse['message']['newPassword'].toString());
        // Get.back();
        // }
      } else {
        Fluttertoast.showToast(msg: "unauthorized credentials ");

        // print("failed");
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
