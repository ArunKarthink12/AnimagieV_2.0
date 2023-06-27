import 'dart:io';

import 'package:doctorapp/view/kyc/processindicator/progressindicator.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

import '../allpackages.dart';

class DoctorName extends StatefulWidget {
  const DoctorName({super.key});

  @override
  State<DoctorName> createState() => _DoctorNameState();
}

class _DoctorNameState extends State<DoctorName> with TickerProviderStateMixin {
  late AnimationController controller;
  KycController kycController = Get.find();
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgcolor,
          elevation: 0,
          centerTitle: false,
          leadingWidth: 100,
          leading: Image.asset(
            'assets/images/appbardesignlogo.png',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 20),
              child: Text(
                'SKIP',
                style: forminputstyle,
              ),
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    'assets/images/background.png',
                  ),
                  fit: BoxFit.cover,
                ))),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  // Padding(
                  //     padding:
                  //         const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  // child:
                  ProgressIndicatorWithIcon(
                    percentage: .1,
                    // )
                    // child: Image.asset('assets/images/progress.png'),
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '8% Completed',
                        style: threehundredtweleve,
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 10.0.hp,
                        width: 35.0.wp,
                        // color: Colors.green.shade100,
                      ),
                      Positioned(
                          top: 1.0.hp,
                          child: Container(
                              height: 8.0.hp,
                              width: 20.0.wp,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: lightblue),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/hand.png')))),
                      Positioned(
                          left: 12.0.wp,
                          top: 10.0.sp,
                          child: Container(
                              // backgroundColor: Colors.transparent,
                              // radius: 30.0.sp,
                              height: 7.0.hp,
                              width: 15.0.wp,
                              child: kycController.profile_pic.value.path == ""
                                  ? Image.asset(
                                      'assets/images/doctor2.png',
                                      fit: BoxFit.cover,
                                    )
                                  : Image.file(
                                      File(
                                        kycController.profile_pic.value.path,
                                      ),
                                      fit: BoxFit.cover,
                                    ))),
                    ],
                  ),
                  SizedBox(
                    height: 5.0.hp,
                  ),
                  Text(
                    'Share your Good name…',
                    style: uploadpic,
                  ),
                  SizedBox(
                    height: 5.0.hp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 23,
                      right: 25,
                    ),
                    child: Container(
                      height: 7.0.hp,
                      width: 90.0.wp,
                      color: screenbackground,
                      child: TextFormField(
                        controller: kycController.name,
                        style: forminputstyle,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: Color(0xFFDDDCDC), width: 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 1),
                            ),
                            hintText: 'Your Name*',
                            contentPadding: const EdgeInsets.all(10),
                            hintStyle: forminputstyle,
                            border: const OutlineInputBorder(
                              gapPadding: 4,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.00.hp,
                  ),
                  ButtonIconButton(
                    press: () {
                      if (kycController.name.text.isEmpty) {
                        Fluttertoast.showToast(msg: 'pls enter name');
                      } else {
                        Get.to(const DoctorGender());
                      }
                    },
                    bordercolor: buttoncolor,
                    text: 'CONTINUE',
                  ),
                ])),
          ],
        ))));
  }
}
