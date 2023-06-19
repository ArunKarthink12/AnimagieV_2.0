import 'dart:convert';
import 'dart:developer';
import '../../view/allpackages.dart';

import 'package:http/http.dart' as http;

import '../model/login_model.dart';

class LoginService {
  Future<Loginmodel?> loginService({email, password}) async {
    try {
      var data = {
        // newdoctor@gmail.com
        // 12345678
        'email': email.toString(),
        'password': password.toString(),
        "type": '0'
      };
      print(data.toString());
      var response = await http.post(
          Uri.parse('https://jooju.in/app-demo/public/api/login-doctor'),
          body: data);
      var jsonresponse = json.decode(response.body);
      print(response.body);
      print(jsonresponse);
      if (response.statusCode == 200) {
        log('successs-------------------------------');
        Fluttertoast.showToast(msg: "success");
        return Loginmodel.fromJson(jsonresponse);
      } else {
        log('failure-------------------------------');
        Fluttertoast.showToast(msg: "unauthorized credentials ");
      }
    } catch (e) {
      rethrow;
    }
  }
}
