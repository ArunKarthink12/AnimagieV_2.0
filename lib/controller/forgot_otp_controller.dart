// import 'dart:developer';

import 'package:doctorapp/view/reset_password/create_password.dart';
import 'package:get/get.dart';

import '../service/forgot_otp_service.dart';

class ForgotOtpController extends GetxController {
  var forgotOtp = ''.obs;
  var forgotservice = ForgotOtpService();
  RxBool isotpLoad = true.obs;
  Future forgotOtpController({email}) async {
    try {
      var response = await forgotservice.forgototpService(
          otp: forgotOtp.value.toString(), email: email);

      if (response != null) {
        Get.to(CreatenewPassword());
        Get.toNamed('/createPassword');
        isotpLoad(false);
      } else {}
    } catch (e) {
      rethrow;
    }
  }
}
