import 'dart:developer';

import '../service/forgotpassword_service.dart';
import '../view/allpackages.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController email = TextEditingController();
  var forgotpasswordService = ForgotPasswordService();

  Future forgotPasswordController() async {
    try {
      var response =
          await forgotpasswordService.forgotPasswordService(email: email.text);
      log('mobile---${response}');
      if (response != null) {
        Fluttertoast.showToast(msg: response.message.toString());
        Get.to(ForgotOTPScreen());
        Get.toNamed('/forgototp');
      } else {
        // Fluttertoast.showToast(msg: response.message.toString());
      }
    } catch (e) {
      rethrow;
    }
  }
}
