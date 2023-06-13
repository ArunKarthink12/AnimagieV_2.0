import '../allpackages.dart';
 

class CreatenewPassword extends StatefulWidget {
  const CreatenewPassword({Key? key,this.email}) : super(key: key);
 final  String? email;

  @override
  State<CreatenewPassword> createState() => _CreatenewPasswordState();
}

class _CreatenewPasswordState extends State<CreatenewPassword> {
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
        child: Column(
          children: [
            DummyDetails(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
              CreateNewPasswordInputFields(email:widget.email.toString()),
            SizedBox(height: 1.00.hp),
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
            SizedBox(height: 2.00.hp),
          ],
        ),
      ),
    )));
  }
}
