import 'dart:io';

import 'package:doctorapp/controller/kyc_controller.dart';
import 'package:doctorapp/view/kyc/processindicator/progressindicator.dart';

import '../allpackages.dart';

class DoctorGender extends StatefulWidget {
  const DoctorGender({super.key});

  @override
  State<DoctorGender> createState() => _DoctorGenderState();
}

class _DoctorGenderState extends State<DoctorGender> {
  // var gendername = ['Male', 'Female'];
  KycStaticController kycStaticController = Get.put(KycStaticController());
  KycController kycController = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    fetchdata();
    super.initState();
  }

  fetchdata() {
    Future.delayed(Duration.zero, () async {
      await kycStaticController.kycStaticController();
    });
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
                      percentage: .2,
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
                          '15% Completed',
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
                                    shape: BoxShape.circle,
                                    color: Color(0xffDDE7F5)),
                                child:
                                    Image.asset('assets/images/gender.png'))),
                        Positioned(
                            left: 12.0.wp,
                            top: 10.0.sp,
                            child: Container(
                                // backgroundColor: Colors.transparent,
                                // radius: 30.0.sp,
                                height: 7.0.hp,
                                width: 15.0.wp,
                                child: kycController.profile_pic.value.path ==
                                        ""
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
                      'Select Your Gender...',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Obx(() {
                      if (kycStaticController.loading.isTrue) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (kycStaticController.listdata.isEmpty) {
                        return Center(
                          child: Text("No Data"),
                        );
                      } else {
                        return Container(
                          height: 30.0.hp,
                          width: 90.0.wp,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      kycController.gender.value = index;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 6.0.hp,
                                      width: 90.0.wp,
                                      decoration: BoxDecoration(
                                        color: screenbackground,
                                        border: Border.all(
                                            color: kycController.gender.value ==
                                                    index
                                                ? Colors.black
                                                : screenbackground),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child: Text(
                                        // gendername[index],
                                        kycStaticController
                                            .listdata.first.gender[index].title
                                            .toString(),
                                        style: forminputstyle,
                                      )),
                                    ),
                                  ),
                                );
                              }),
                        );
                      }
                    }),
                    SizedBox(
                      height: 18.00.hp,
                    ),
                    ButtonIconButton(
                      press: () {
                        // loginController.loginController(context: context);

                        Get.to(const DoctorPhone());
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
