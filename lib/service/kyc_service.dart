import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as dio;
import 'package:doctorapp/model/kycmodel.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../model/forgotpassword_model.dart';
import '../utils/common_function/constants.dart';

class KycService {
  Future kycService(
      {name,
      gender,
      qualification,
      id,
      profile_pic,
      mobile,
      qualification_details,
      council_registration_number,
      experience,
      adhaar_number,
      adhaar_pic,
      pan_number,
      pan_pic,
      degree_document,
      license_document,
      clinic_name,
      clinic_address,
      clinic_logo,
      sign_pic}) async {
    log('enterrrrr');

    try {
      var data = {
        "name": name ?? '',
        "gender": gender ?? '',
        "qualification": qualification ?? '',
        "id": id ?? '',
        "profile_pic": profile_pic,
        'mobile': mobile ?? '',
        "qualification_details": qualification_details ?? '',
        "council_registration_number": council_registration_number ?? '',
        "experience": experience ?? '',
        "adhaar_number": adhaar_number ?? '',
        "adhaar_pic": adhaar_pic ?? "",
        "pan_number": pan_number ?? '',
        "pan_pic": pan_pic ?? '',
        "degree_document": degree_document ?? '',
        "license_document": license_document ?? '',
        "clinic_name": clinic_name ?? '',
        "clinic_address": clinic_address ?? '',
        "clinic_logo": clinic_logo ?? '',
        "sign_pic": sign_pic ?? ''
      };
      log('dataa');
      log('mobieee--${data.toString()}');

      final formData = dio.FormData.fromMap({
        "name": name ?? '',
        "gender": gender ?? '',
        "qualification": qualification ?? '',
        "id": id ?? '',
        "profile_pic": await dio.MultipartFile.fromFile(
          profile_pic.path,
        ),
        'mobile': mobile ?? '',
        "qualification_details": qualification_details ?? '',
        "council_registration_number": council_registration_number ?? '',
        "experience": experience ?? '',
        "adhaar_number": adhaar_number ?? '',
        "adhaar_pic": await dio.MultipartFile.fromFile(
          adhaar_pic.path,
        ),
        "pan_number": pan_number ?? '',
        "pan_pic": await dio.MultipartFile.fromFile(
          pan_pic.path,
        ),
        "degree_document": await dio.MultipartFile.fromFile(
          degree_document.path,
        ),
        "license_document": await dio.MultipartFile.fromFile(
          license_document.path,
        ),
        "clinic_name": clinic_name ?? '',
        "clinic_address": clinic_address ?? '',
        "clinic_logo": await dio.MultipartFile.fromFile(
          clinic_logo.path,
        ),
        "sign_pic": await dio.MultipartFile.fromFile(
          sign_pic.path,
        ),
      });

      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = sharedPreferences.getString(Constants.token);

      var response = await dio.Dio()
          .post("https://jooju.in/app-demo/public/api/doctor/kyc",
              data: formData,
              options: dio.Options(
                headers: {
                  'Authorization': 'Bearer $token',
                  'Accept': 'application/json'
                },
              ));

      log('mobile----${response.data.toString()}');
      log('toast------');

      if (response.statusCode == 200) {
        print('++++++++++++++++');
        // Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        return KycModel.fromJson(jsonDecode(response.data));
      } else {
        // Fluttertoast.showToast(msg: jsonresponse['message'].toString());
        return null;
      }
    } on dio.DioException catch (e) {
      log(e.error.toString());
      rethrow;
    }
  }
}
