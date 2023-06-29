import 'dart:convert';
import 'dart:developer';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../model/kyc_static_model.dart';

class KycStaticService {
  //otp
  Future kycStatic() async {
    try {
      var response = await http.post(
          Uri.parse(
              'https://jooju.in/app-demo/public/api/doctor/static-values'),
          headers: {
            'Authorization':
                'Bearer 12|679AtT1gKSCkA16yMCQhw77yHdC8LzMk4l4vXl4Y ',
            'Content-Type': 'application/json',
          });
      print("Responce--->" + response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Fluttertoast.showToast(msg: response.statusCode.toString());
        var jsonresponse = jsonDecode(response.body);

        return KycStaticModel.fromJson(jsonresponse);
      } else {
        Fluttertoast.showToast(msg: response.statusCode.toString());

        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
