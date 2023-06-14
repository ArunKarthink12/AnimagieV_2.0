import 'dart:convert';
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../model/registermodel.dart';

class RegisterService {
  Future registerService({
    name,
    email,
    password,
    passwordConfirmation,
  }) async {
    try {
      var data = {
        "name": name.toString(),
        "email": email.toString(),
        "password": password.toString(),
        "password_confirmation": passwordConfirmation.toString()
      };
      log(data.toString());
      // var dataEncode = jsonEncode(data);
      var response = await http.post(
          Uri.parse('https://jooju.in/app-demo/public/api/create-doctor'),
          body: data);

      var jsonresponse = jsonDecode(response.body);
      // log(response.body.toString());

      if (response.statusCode == 200) {
        // if (jsonresponse['status'] == 'success') {
        Fluttertoast.showToast(msg: 'Success');
        return RegisterModel.fromJson(jsonresponse);
      } else {
        Fluttertoast.showToast(msg: "Failed");
      }
      // }
      //  else {
      //   Fluttertoast.showToast(msg: jsonresponse['message'].toString());
      //   return null;
      // }
    } catch (e) {
      rethrow;
    }
  }
}
