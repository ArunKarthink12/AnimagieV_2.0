import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../model/kyc_static_model.dart';

class KycStaticService {
  //otp
  Future kycStatic() async {
    try {
      var response = await http.post(
          Uri.parse(
              'https://jooju.in/app-demo/public/api/doctor/static-values'),
          headers: {"Accept": "application/json"});

      var jsonresponse = jsonDecode(response.body);
      log(response.body.toString());

      if (response.statusCode == 200) {
        return KycStaticModel.fromJson(jsonresponse);
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }
}
