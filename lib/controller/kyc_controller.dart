import 'dart:developer';
import 'dart:io';

import 'package:doctorapp/model/kycmodel.dart';
// import 'package:doctorapp/view/kyc/popupscreen.dart';
// import 'package:doctorapp/service/kyc_service.dart';
//
// import '../service/forgotpassword_service.dart';
import '../view/allpackages.dart';

class KycController extends GetxController {
  List<KycModel> _kyclist = [];
  List<KycModel> get kyclist => _kyclist;
  TextEditingController name = TextEditingController();

  TextEditingController id = TextEditingController();
  TextEditingController mobile = TextEditingController();

  TextEditingController qualification_details = TextEditingController();
  TextEditingController council_registration_number = TextEditingController();
  TextEditingController experience = TextEditingController();
  TextEditingController adhaar_number = TextEditingController();
  TextEditingController pan_number = TextEditingController();
  TextEditingController clinic_name = TextEditingController();
  TextEditingController clinic_address = TextEditingController();
  Rx<File> profile_pic = File('').obs;
  Rx<File> adhaar_pic = File('').obs;
  File pan_pic = File('');
  Rx<File> degree_document = File('').obs;
  Rx<File> license_document = File('').obs;
  Rx<File> clinic_logo = File('').obs;
  Rx<File> sign_pic = File('').obs;
  RxInt gender = 1.obs;
  RxInt qualification = 1.obs;

  var kycservice = KycService();

  Future kycController() async {
    try {
      var response = await kycservice.kycService(
          name: name.text,
          id: 5.toString(),
          gender: 1.toString(),
          mobile: mobile.text,
          qualification: 1.toString(),
          qualification_details: qualification_details.text,
          council_registration_number: council_registration_number.text,
          experience: experience.text,
          adhaar_number: adhaar_number.text,
          pan_number: pan_number.text,
          clinic_name: clinic_name.text,
          clinic_address: clinic_address.text,
          profile_pic: profile_pic.value,
          adhaar_pic: adhaar_pic.value,
          pan_pic: pan_pic.path.toString(),
          degree_document: degree_document.value,
          license_document: license_document.value,
          clinic_logo: clinic_logo.value,
          sign_pic: sign_pic.value);
      log('mobile---${response}');
      if (response != null) {
        _kyclist.add(response);
        // Fluttertoast.showToast(msg: response.toString());
        // Get.to(PopUpPage());
        // Get.toNamed('/forgototp');
      } else {
        // Fluttertoast.showToast(msg: response.message.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
