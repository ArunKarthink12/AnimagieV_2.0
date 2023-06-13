import '../allpackages.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AssetImage? images;
  // String? token;

  @override
  void initState() {
  // loginController.loginController();
    super.initState();
    images = const AssetImage(
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
      // backgroundColor: bgcolor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
                height: 100.0.hp,
                width: 100.0.wp,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  fit: BoxFit.contain,
                ))),
            Positioned(
              child: Column(
                children: [
                  SizedBox(height: 5.00.hp),
                  Image.asset('assets/images/logo.png'),
                  Text('WELCOME', style: toptitleStylebold),
                  SizedBox(height: 2.00.hp),
                  Text(
                      'Please put your informaton below to login to \n your account',
                      style: welcome,
                      textAlign: TextAlign.center),
                  SizedBox(height: 5.00.hp),
                  const LoginInputFields(),
                  SizedBox(height: 5.00.hp),
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
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
