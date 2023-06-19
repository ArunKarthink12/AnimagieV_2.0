import 'package:doctorapp/view/kyc/processindicator/progressindicator.dart';
import 'package:flutter/services.dart';

import '../allpackages.dart';

class DoctorPhone extends StatefulWidget {
  const DoctorPhone({super.key});

  @override
  State<DoctorPhone> createState() => _DoctorPhoneState();
}

class _DoctorPhoneState extends State<DoctorPhone> {
  KycController kycController = Get.find();
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
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    ProgressIndicatorWithIcon(
                      percentage: .3,
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
                          '25% Completed',
                          style: threehundredtweleve,
                        ),
                      ),
                    ),
                    // Stack(
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.only(
                    //           left: 20.0, right: 20, top: 10),
                    //       child: Image.asset('assets/images/progress.png'),
                    //     ),
                    //     Positioned(
                    //         left: 2.0.wp,
                    //         child: Image.asset('assets/images/foot.png'))
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 1.0.hp,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20.0),
                    //   child: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: Text(
                    //       '25% Completed',
                    //       style: threehundredtweleve,
                    //     ),
                    //   ),
                    // ),
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
                                    shape: BoxShape.circle,
                                    color: Color(0xffDDE7F5)),
                                child: Image.asset(
                                    'assets/images/emergency.png'))),
                        Positioned(
                            left: 12.0.wp,
                            child: Container(
                              height: 10.0.hp,
                              width: 20.0.wp,
                              child:
                                  Image.asset('assets/images/uploaddoctor.png'),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Text(
                      'Your Phone number…',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                        height: 7.0.hp,
                        width: 90.0.wp,
                        color: screenbackground,
                        // padding: const EdgeInsets.only(
                        //   left: 23,
                        //   right: 25,
                        // ),
                        child: TextFormField(
                          style: forminputstyle,
                          controller: kycController.mobile,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d*')),
                          ],
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
                              prefixIcon:
                                  Image.asset('assets/images/phone.png'),
                              hintText: '+91  Phone number*',
                              contentPadding: const EdgeInsets.all(10),
                              hintStyle: formhintstyle,
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
                        // loginController.loginController(context: context);
                        if (kycController.mobile.text.isEmpty) {
                          Fluttertoast.showToast(msg: 'pls enter phone number');
                        } else {
                          Get.to(const Qualification());
                        }
                      },
                      bordercolor: buttoncolor,
                      text: 'CONTINUE',
                    ),
                  ])),
            ),
          ],
        ))));
  }
}
