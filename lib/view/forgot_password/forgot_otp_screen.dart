import '../allpackages.dart';

class ForgotOTPScreen extends StatefulWidget {
  ForgotOTPScreen({Key? key, this.mobileNumber}) : super(key: key);
  String? mobileNumber;

  @override
  State<ForgotOTPScreen> createState() => _ForgotOTPScreenState();
}

class _ForgotOTPScreenState extends State<ForgotOTPScreen> {
  AssetImage? images;

  @override
  void initState() {
    super.initState();
    images = const AssetImage(
      "assets/img/enterOTP.gif",
    );
  }

  @override
  void dispose() {
    //  print('${widget.asset} dispose');
    images!.evict();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background.png',
                      ),
                      fit: BoxFit.fill,
                    )),
                    child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: 6.0.hp,
                        ),
                        SizedBox(
                            height: 25.0.hp,
                            width: 25.0.hp,
                            child: Image.asset('assets/images/A_logo.png')),
                        Text('Enter Verification Code',
                            style: toptitleStylebold),
                        SizedBox(height: 2.00.hp),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Text(
                                  '''Enter the verification code we just sent you on your email address''',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          wordSpacing: 2,
                                          letterSpacing: 0.2,
                                          fontSize: 9.00.sp,
                                          color: subtitlecolor,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.00.hp),
                        const ForgotOtpField(),
                        SizedBox(height: 2.00.hp),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account?',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: const Color(0xff6F6F6F),
                                        fontWeight: FontWeight.w500)),
                              ),
                              Text(
                                'Register',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12.00.sp,
                                        color: appcolor,
                                        fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 1.00.hp),
                      ]),
                    )))));
  }
}
