// https://jooju.in/app-demo/public/api/doctor/doctor-holiday-cancel
import 'dart:convert';
// import 'dart:developer';

import 'package:doctorapp/Urls/utils_Urls.dart';
import 'package:doctorapp/utils/common_function/constants.dart';
import 'package:doctorapp/view/kyc/model/cancelRequestmodel.dart';
import 'package:doctorapp/view/kyc/model/doctorslotsmodel.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// import '../model/personaldetailsmodel.dart';

class CancelRequestService {
  Future cancelRequestServiceFunction() async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = sharedPreferences.getString(Constants.token);

      var response = await http.post(
        Uri.parse(Urls.cancelRequest),
        headers: {'Authorization': 'Bearer $token'},
      );

      var jsonresponse = jsonDecode(response.body);
      // log(response.body.toString());

      if (response.statusCode == 200) {
        // print("123" + response.body);
        Fluttertoast.showToast(msg: "Success");
        return CancelRequestModel.fromJson(jsonresponse);
      } else {
        Fluttertoast.showToast(msg: "Failed");
      }
    } catch (e) {
      rethrow;
    }
  }
}
