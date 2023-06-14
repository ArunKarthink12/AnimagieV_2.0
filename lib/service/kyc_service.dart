// import 'dart:convert';
import 'dart:developer';

// import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart' as dio;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http_parser/http_parser.dart';

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
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var token = sharedPreferences.getString(Constants.token);
    try {
      // var data = {
      //   "name": name ?? '',
      //   "gender": gender ?? '',
      //   "qualification": qualification ?? '',
      //   "id": id ?? '',
      //   "profile_pic": profile_pic,
      //   'mobile': mobile ?? '',
      //   "qualification_details": qualification_details ?? '',
      //   "council_registration_number": council_registration_number ?? '',
      //   "experience": experience ?? '',
      //   "adhaar_number": adhaar_number ?? '',
      //   "adhaar_pic": adhaar_pic ?? "",
      //   "pan_number": pan_number ?? '',
      //   "pan_pic": pan_pic ?? '',
      //   "degree_document": degree_document ?? '',
      //   "license_document": license_document ?? '',
      //   "clinic_name": clinic_name ?? '',
      //   "clinic_address": clinic_address ?? '',
      //   "clinic_logo": clinic_logo ?? '',
      //   "sign_pic": sign_pic ?? ''
      // };
      // log('dataa');
      // log('mobieee--${data.toString()}');
      dio.FormData formData;

      String fileNames = '';
      if (pan_pic != '') {
        log("Filename-->$fileNames");
        fileNames = pan_pic.toString().split('/').last;
      }

      formData = dio.FormData.fromMap({
        "name": 'Karthi',
        "gender": "1",
        "qualification": "BE",
        "id": "1",
        "profile_pic": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        'mobile': "7708491725",
        "qualification_details": "Test",
        "council_registration_number": "Councile",
        "experience": '1',
        "adhaar_number": '21312312312',
        "adhaar_pic": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        "pan_number": '123123',
        "pan_pic": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        // : await dio.MultipartFile.fromFile(
        //   pan_pic.path,
        // ),
        "degree_document": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        "license_document": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        "clinic_name": 'dR',
        "clinic_address": 'ngl',
        "clinic_logo": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
        "sign_pic": await dio.MultipartFile.fromFile(
          pan_pic,
          filename: fileNames,
          contentType: MediaType(
            "image",
            "jpg",
          ),
        ),
      });

      dio.Response response = await dio.Dio()
          .post("https://jooju.in/app-demo/public/api/doctor/kyc",
              data: formData,
              options: dio.Options(
                headers: {
                  'Content-Type': 'application/json',
                  'Authorization': 'Bearer $token',
                },
              ));

      log('mobile----${response.data.toString()}');
      log('toast------');

      if (response.statusCode == 200) {
        print('++++++++++++++++');
        Fluttertoast.showToast(msg: "Success");
        // return KycModel.fromJson(response.data);
      } else {
        Fluttertoast.showToast(msg: "Failed");
        return null;
      }
    }
    //  on dio.DioException
    catch (e) {
      // log(e.error.toString());
      rethrow;
    }
  }
}
