import 'dart:developer';

import 'package:doctorapp/view/view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import '../service/change_password_service.dart';

// import '../utils/common_function/constants.dart';
import 'login_controller.dart';

class ChangePaswordController extends GetxController {
  TextEditingController password = TextEditingController();
  TextEditingController password_confirmation = TextEditingController();
  RxBool createpasswordLoad = true.obs;
  var changePassword = ChangePasswordService();
  Future changePasswordController({context, email}) async {
    if (password.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please enter password");
    } else if (password_confirmation.text.isEmpty) {
      Fluttertoast.showToast(msg: "Please enter Confirm password");
    } else if (password.text != password_confirmation.text) {
      Fluttertoast.showToast(msg: "Both Should be Same");
    } else {
      createpasswordLoad(true);
      if (createpasswordLoad.value) {
        _loadingBar(context);
      }

      try {
        var response = await changePassword.changePasswordService(
            password: password.text,
            password_confirmation: password_confirmation.text,
            email: email);
        log('responseeeee------------');
        // log(response.toString());

        if (response != null) {
          Get.to(const LoginScreen());
          // print('responseeee');
          createpasswordLoad(false);
          // Fluttertoast.showToast(msg: response.message.toString());
        } else {
          //Fluttertoast.showToast(msg: response.message.toString());
          createpasswordLoad(false);
          Get.back();
        }
      } catch (e) {
        rethrow;
      }
    }
  }
}

void _loadingBar(BuildContext ctx) {
  showDialog(
      barrierDismissible: false,
      context: ctx,
      builder: (BuildContext context) {
        return const Center(
          child: Loader(),
        );
      });
}
