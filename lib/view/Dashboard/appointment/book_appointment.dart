import '../../allpackages.dart';
import 'appointment_faq.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          leading: const Icon(
            Icons.arrow_back,
            color: headingtext,
          ),
          title: Text(
            'BOOK APPOINTMENT',
            style: toptitleStylebold,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  // Get.to(const FaqScreen());
                },
                child: const Icon(
                  Icons.search,
                  color: headingtext,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.delete_outline,
                color: headingtext,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          height: 100.00.hp,
          width: 100.00.wp,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select your pet to proceed appointment',
                    style: toptitleStyle,
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Container(
                    height: 70.0.hp,
                    width: 100.0.wp,
                    child: GridView.builder(
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 3 / 2,
                              mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  height: 16.0.hp,
                                  width: 40.0.wp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                      'assets/images/uploaddog.png',
                                      fit: BoxFit.fill)),
                              Text(
                                'Browny',
                                style: toptitleStylebold,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  ButtonIconButton(
                    press: () async {
                      Get.to(FaqScreen());
                      // if (forgotOtpController.forgotOtp.value.isEmpty) {
                      //   Fluttertoast.showToast(msg: 'Please enter otp');
                      // } else if (formKey.currentState!.validate()) {
                      //   await forgotOtpController.forgotOtpController(
                      //       mobileNumber:
                      //           forgotPasswordController.mobile.text.toString());
                      // }

                      //  Get.to(const ChangeNewPassword());
                    },
                    bordercolor: appcolor1,
                    text: 'PROCEED',
                  ),
                ],
              )),
        )));
  }
}
