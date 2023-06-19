import 'dart:developer';

// import '../model/registermodel.dart';
import '../service/register_service.dart';
import '../view/allpackages.dart';

class RegisterController extends GetxController {
  var registerService = RegisterService();

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password_confirmation = TextEditingController();
  RxBool isRegisterLoad = true.obs;

  // List<CreateAccountModel> register = [];
  //otp

  Future registerController({context}) async {
    if (name.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter user name');
    } else if (email.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter emailID');
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter password');
    } else if (password_confirmation.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter confirmPassword');
    } else {
      isRegisterLoad(true);
      if (isRegisterLoad.value) {
        _loadingBar(context);
      }

      try {
        var response = await registerService.registerService(
            name: name.text,
            email: email.text,
            password: password.text,
            passwordConfirmation: password_confirmation.text);
        log('resss');
        // log(response.toString());
        if (response != null) {
          isRegisterLoad(false);
          Get.to(const UploadPictureDetail());
          // Get.toNamed('/login');
          log("Login");
        } else {
          isRegisterLoad(false);
          Get.back();
        }
      } catch (e) {
        rethrow;
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
}

// class Loader extends StatelessWidget {
//   const Loader({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         // decoration: BoxDecoration(color: Colors.amber),
//         // height: MediaQuery.of(context).size.height * 0.2,
//         // width: MediaQuery.of(context).size.width * 0.4,
//         child: Center(child: Image.asset("assets/images/loaging.png")));
  // }
// }
