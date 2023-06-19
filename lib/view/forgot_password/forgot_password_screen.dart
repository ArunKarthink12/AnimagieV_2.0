import '../allpackages.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  AssetImage? images;
  // String? token;

  @override
  void initState() {
    // loginController.loginController();
    super.initState();
    images = AssetImage(
      "assets/img/login.gif",
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
                child: Stack(
      children: [
        Container(
            height: 100.0.hp,
            width: 100.0.wp,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.fill,
            ))),
        Column(
          children: [
            SizedBox(
              height: 5.0.hp,
            ),
            SizedBox(
                height: 25.0.hp,
                width: 25.0.hp,
                child: Image.asset('assets/images/A_logo.png')),
            Text('FORGOT PASSWORD', style: toptitleStylebold),
            SizedBox(height: 2.00.hp),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      '''Enter the email address associated \n with your account''',
                      textAlign: TextAlign.center,
                      style: welcome,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.00.hp),
            const ForgotPasswordInputFields(),
            SizedBox(height: 3.00.hp),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignupScreen()),
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
          ],
        ),
      ],
    ))));
  }
}
