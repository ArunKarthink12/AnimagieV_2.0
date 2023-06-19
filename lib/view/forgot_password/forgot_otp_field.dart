// import 'package:doctorapp/controller/forgot_password_controller.dart';
// import 'package:doctorapp/view/reset_password/create_password.dart';

// import '../../controller/forgot_otp_controller.dart';
// import '../Dashboard/profile/change_password/change_password.dart';
import '../allpackages.dart';

class ForgotOtpField extends StatefulWidget {
  const ForgotOtpField({Key? key}) : super(key: key);

  @override
  State<ForgotOtpField> createState() => _ForgotOtpFieldState();
}

class _ForgotOtpFieldState extends State<ForgotOtpField> {
  bool hasError = false;
  String currentText = "";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  ForgotOtpController forgotOtpController = Get.put(ForgotOtpController());
  ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.1,
              // width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: PinCodeTextField(
                    appContext: context,
                    textStyle: GoogleFonts.jost(
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.w600)),
                    pastedTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    //obscureText: true,
                    // obscuringCharacter: '*',
                    // obscuringWidget: FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,

                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 7.0.hp,
                      fieldWidth: 13.0.wp,
                      activeColor: screenbackground,
                      selectedFillColor: appcolor,
                      selectedColor: Colors.white,
                      inactiveColor: screenbackground,
                      inactiveFillColor: Colors.white,
                      activeFillColor:
                          hasError ? screenbackground : screenbackground,
                    ),
                    cursorColor: Colors.white,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,

                    onChanged: (value) {
                      // ignore: avoid_print
                      print(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    // onCompleted: (value) {
                    //   print('success');
                    // },
                    onCompleted: (value) {
                      forgotOtpController.forgotOtp(value);
                    },
                  )),
            ),
            SizedBox(
              height: 1.0.hp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Text(
                    'If you didn\'t receive a code!',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: const Color(0xff373737),
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  width: 1.0.wp,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Resend',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 10.00.sp,
                            color: forgotpass,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500)),
                  ),
                )
              ],
            ),
            SizedBox(height: 25.00.hp),
            ButtonIconButton(
              press: () async {
                // Get.to(CreatenewPassword());
                if (formKey.currentState!.validate()) {
                  if (forgotOtpController.forgotOtp.value.isEmpty) {
                    Fluttertoast.showToast(msg: 'Please enter otp');
                  } else if (formKey.currentState!.validate()) {
                    await forgotOtpController
                        .forgotOtpController(
                            email:
                                forgotPasswordController.email.text.toString())
                        .then((value) => Get.to(CreatenewPassword(
                            email: forgotPasswordController.email.text
                                .toString())));
                  }
                }
              },
              bordercolor: appcolor1,
              text: 'VERIFY',
            ),
            SizedBox(height: 4.00.hp),
          ],
        ),
      ),
    );
  }
}
