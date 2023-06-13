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
    password_confirmation,
  }) async {
    try {
      var data = {
        "name": name ?? "",
        "email": email ?? "",
        "password": password ?? "",
        "password_confirmation": password_confirmation ?? ""
      };
      log(data.toString());
      var dataEncode = jsonEncode(data);
      var response = await http.post(
          Uri.parse('https://jooju.in/app-demo/public/api/create-doctor'),
          body: dataEncode);

      var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        if (jsonresponse['status'] == 'success') {
          Fluttertoast.showToast(msg: jsonresponse['message']);
          return RegisterModel.fromJson(jsonresponse);
        } else {
          Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        }
      } else {
        Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
