import '../allpackages.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AssetImage? images;

  @override
  void initState() {
    super.initState();
    images = const AssetImage(
      "assets/images/A_logo.png",
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
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
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
              Positioned(
                child: Column(
                  children: [
                    SizedBox(height: 4.0.hp),
                    SizedBox(
                        height: 24.0.hp,
                        width: 24.0.hp,
                        child: Image.asset('assets/images/A_logo.png')),
                    Text('CREATE A NEW ACCOUNT', style: toptitleStylebold),
                    SizedBox(height: 1.0.hp),

                    // Container(
                    //   color: Colors.white,
                    //   height: 30.00.hp,
                    //   width: 80.00.wp,
                    //   child: Image.asset(
                    //     "assets/img/login.gif",
                    //     height: 40.00.hp,
                    //     width: 80.00.wp, fit: BoxFit.fitWidth,
                    //     gaplessPlayback: true,

                    //     //    repeat: ImageRepeat.repeat,
                    //   ),
                    // ),
                    // SizedBox(height: 4.00.hp),

                    const SignupInputFields(),

                    SizedBox(height: 1.0.hp),
                    //  / SignupSocialLogins(),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const UploadPictureDetail()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account ? ',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12.00.sp,
                                    color: const Color(0xff6F6F6F),
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            'Login',
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
            ],
          ),
        ));
  }
}
