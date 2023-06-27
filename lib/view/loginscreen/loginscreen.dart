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

  back() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgcolor,

      body: WillPopScope(
        onWillPop: () {
          return back();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
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
                    SizedBox(height: 2.0.hp),
                    SizedBox(
                        height: 25.0.hp,
                        width: 25.0.hp,
                        child: Image.asset('assets/images/A_logo.png')),
                    Text('WELCOME', style: toptitleStylebold),
                    SizedBox(height: 1.00.hp),
                    Text(
                        'Please put your informaton below to login to \n your account',
                        style: welcome,
                        textAlign: TextAlign.center),
                    SizedBox(height: 3.0.hp),
                    const LoginInputFields(),
                    SizedBox(height: 3.0.hp),
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
                                    fontSize: 10.0.sp,
                                    color: const Color(0xff6F6F6F),
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            'Register',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 10.0.sp,
                                    color: appcolor,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 1.0.hp),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
