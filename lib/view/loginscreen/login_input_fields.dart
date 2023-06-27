import 'package:doctorapp/controller/login_controller.dart';

// import '../Dashboard/home_screen.dart';
import '../allpackages.dart';

class LoginInputFields extends StatefulWidget {
  const LoginInputFields({Key? key}) : super(key: key);

  @override
  State<LoginInputFields> createState() => _LoginInputFieldsState();
}

class _LoginInputFieldsState extends State<LoginInputFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginController loginController = Get.put(LoginController());
  bool _isPinnewHidden = true;

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  bool select = true;
  bool select1 = true;
  var selectvalue;
  var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 7.0.hp, width: MediaQuery.of(context).size.width - 10.0.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              controller: loginController.email,
              style: forminputstyle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: appcolor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  prefixIcon: Image.asset('assets/images/email.png'),
                  hintText: 'Email Id',
                  contentPadding: EdgeInsets.only(left: 20.0.sp),
                  hintStyle: forminputstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
          SizedBox(height: 2.0.hp),
          Container(
            color: Colors.white,
            height: 7.0.hp, width: MediaQuery.of(context).size.width - 10.0.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              controller: loginController.password,
              obscureText: _isPinnewHidden,
              style: forminputstyle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: appcolor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 1),
                  ),
                  prefixIcon: Image.asset(
                    'assets/images/pass.png',
                    width: 16.0.wp,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      _togglecnewPinView();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 13.0.sp, left: 3, bottom: 13.0.sp),
                      child: Icon(
                        _isPinnewHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: MediaQuery.of(context).size.height * 0.025,
                        color: const Color(0xffC6C6C6),
                      ),
                    ),
                  ),
                  // /fillColor: const Color(0xffC6C6C6),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.only(
                    left: 20.0.sp,
                  ),
                  hintStyle: forminputstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
          SizedBox(height: 2.00.hp),
          Padding(
            padding: EdgeInsets.only(left: 18.0.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 6.0.hp,
                      width: 5.0.wp,
                      child: Checkbox(
                        side: BorderSide(width: 2, color: Colors.white),
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        activeColor: Color(0xff0F52BA),
                        value: this.select,
                        onChanged: (value) {
                          setState(() {
                            this.select = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 4.0.wp,
                    ),
                    Text(
                      'Remember Me',
                      style: rememberme,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5.0.wp),
                  child: InkWell(
                    onTap: () {
                      Get.to(ForgotPassword());
                    },
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 10.00.sp,
                              color: Color(0xffD7A951),
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.0.hp),
          Text(
            'OR',
            style: GoogleFonts.inter(
                // letterSpacing: 0.2,
                fontSize: 14.0.sp,
                color: Color(0xff000958),
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 3.00.hp),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Login Using', style: usinglogin),
            SizedBox(
              width: 2.0.wp,
            ),
            CircleAvatar(
                backgroundColor: screenbackground,
                child: Image.asset('assets/images/google.png')),
          ]),
          SizedBox(height: 2.0.hp),
          ButtonIconButton(
            press: () {
              if (formKey.currentState!.validate()) {
                // print('clickk');
                // Get.to(const HomeScreen());
                loginController.loginController(context: context);
                // print("no");
              } else {
                // Fluttertoast.showToast(msg: "Invalied Credintial");
                // Get.to(const HomeScreen());
              }
            },
            bordercolor: buttoncolor,
            text: 'LOGIN',
          ),
        ],
      ),
    );
  }
}
