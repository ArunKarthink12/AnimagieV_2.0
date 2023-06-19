import 'dart:developer';

// import 'package:doctorapp/view/Dashboard/home_page.dart';

import '../model/login_model.dart';
// import '../service/login_service.dart';
// import '../utils/common_function/constants.dart';
import '../view/Dashboard/home_screen.dart';
import '../view/allpackages.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  List<Loginmodel> _loginmodel = [];
  List<Loginmodel> get getloginmodel => _loginmodel;
  RxBool isloginLoad = true.obs;
  //otp

  var loginService = LoginService();
  Future loginController({context}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (email.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter email');
      isloginLoad(false);
    } else if (password.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter password');
      isloginLoad(false);
    } else if (password.text.isEmpty && email.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Please enter email');
      isloginLoad(false);
    } else {
      isloginLoad(true);
      if (isloginLoad.value) {
        _loadingBar(context);
      }

      try {
        var response = await loginService.loginService(
          email: email.text,
          password: password.text,
        );
        // print(response);

        if (response != null) {
          sharedPreferences.setString(Constants.token, response.token);
          Get.to(const HomeScreen());
          isloginLoad(false);
        } else {
          isloginLoad(false);
          log("gv");
          Get.back();
        }
      } catch (e) {
        rethrow;
      }
    }
  }

  // logout
  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    try {
      sharedPreferences.clear().then((value) {
        email.clear();
        password.clear();
        Get.offNamed('/login');
      });
    } catch (e) {
      rethrow;
    }
  }
}

void _loadingBar(BuildContext ctx) {
  showDialog(
      // barrierDismissible: false,
      context: ctx,
      builder: (BuildContext context) {
        return const Center(
          child: Loader(),
        );
      });
}

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // decoration: BoxDecoration(color: Colors.amber),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Image.asset("assets/images/loading.png"));
  }
}
