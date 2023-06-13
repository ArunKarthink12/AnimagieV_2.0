import '../../controller/register_controller.dart';
import '../allpackages.dart';

class SignupInputFields extends StatefulWidget {
  const SignupInputFields({Key? key}) : super(key: key);

  @override
  State<SignupInputFields> createState() => _SignupInputFieldsState();
}

class _SignupInputFieldsState extends State<SignupInputFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isPinnewHidden = true;
  bool _isPinnewHidden1 = true;
  bool select = true;
  RegisterController registerController = Get.put(RegisterController());
  @override
  void initState() {
    registerController.registerController();
    super.initState();
  }

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  void _togglecnewPinView1() {
    setState(() {
      _isPinnewHidden1 = !_isPinnewHidden1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 3.00.hp),
            Container(
              color: Colors.white,
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: TextFormField(
                style: forminputstyle,
                controller: registerController.name,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/user.png')),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'User Name',
                  contentPadding: const EdgeInsets.only(left: 10, top: 10),
                  hintStyle: formhintstyle,
                ),
              ),
            ),
            SizedBox(height: 3.00.hp),
            Container(
              color: Colors.white,
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: TextFormField(
                controller: registerController.email,
                style: forminputstyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/email.png')),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'Email Id',
                  contentPadding: const EdgeInsets.only(left: 10, top: 10),
                  hintStyle: formhintstyle,
                ),
              ),
            ),
            SizedBox(height: 3.00.hp),
            Container(
              color: Colors.white,
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: TextFormField(
                controller: registerController.password,
                style: forminputstyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/eye.png')),
                  prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/pass.png')),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.only(left: 10, top: 10),
                  hintStyle: formhintstyle,
                ),
              ),
            ),
            SizedBox(height: 3.00.hp),
            Container(
              color: Colors.white,
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: TextFormField(
                controller: registerController.password_confirmation,
                style: forminputstyle,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/pass.png')),
                  suffixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                      child: Image.asset('assets/images/eye.png')),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'Confirm Password',
                  contentPadding: const EdgeInsets.only(left: 10, top: 10),
                  hintStyle: formhintstyle,
                ),
              ),
            ),
            SizedBox(height: 2.00.hp),
            Text(
              'Or',
              style: toptitleStylebold,
            ),
            SizedBox(height: 2.00.hp),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Register Using',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 14.00.sp,
                        color: const Color(0xff292D32),
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                width: 2.0.wp,
              ),
              CircleAvatar(
                  backgroundColor: screenbackground,
                  child: Image.asset('assets/images/google.png')),
            ]),
            SizedBox(height: 2.00.hp),
            Padding(
              padding: EdgeInsets.only(left: 11.0.wp),
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
                        'I agree to the',
                        style: rememberme,
                      ),
                      SizedBox(
                        width: 1.0.wp,
                      ),
                      Text(
                        'Terms&Condition',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 12.00.sp,
                                color: Color(0xff0F52BA),
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.0.wp,
            ),
            ButtonIconButton(
              press: () async {
                if (formKey.currentState!.validate()) {
                  registerController
                      .registerController(context: context)
                      .then((value) => LoginScreen());
                }
                //Get.to(const OTPScreen());
              },
              bordercolor: appcolor1,
              text: 'SIGN UP',
            ),
            SizedBox(height: 3.00.hp),
          ],
        ),
      ),
    );
  }
}
