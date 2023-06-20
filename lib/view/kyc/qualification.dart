import 'package:doctorapp/view/kyc/processindicator/progressindicator.dart';

import '../allpackages.dart';

class Qualification extends StatefulWidget {
  const Qualification({super.key});

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
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
                      percentage: .4,
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
                          '35% Completed',
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
                    //       '35% Completed',
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
                                child:
                                    Image.asset('assets/images/qualify.png'))),
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
                      'Your Qualification ….',
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
                          height: 19.0.hp,
                          width: 90.0.wp,
                          child: ListView.builder(
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      // kycController
                                      //     .qualification(index == 0 ? 1 : 2);
                                      // print(kycController.qualification.value);
                                      kycController.qualification.value = index;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 6.0.hp,
                                      width: 90.0.wp,
                                      decoration: BoxDecoration(
                                        color: screenbackground,
                                        border: Border.all(
                                            color: kycController
                                                        .qualification.value ==
                                                    index
                                                ? Colors.black
                                                : screenbackground),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                          child: Text(
                                        kycStaticController.listdata.first
                                            .qualification[index].title
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
                      height: 1.00.hp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('What\'s is the Major in Masters',
                              style: sixhundredtweleve)),
                    ),
                    SizedBox(
                      height: 2.00.hp,
                    ),
                    Container(
                      color: Colors.white,
                      height: 6.00.hp, width: 85.00.wp,
                      // padding: const EdgeInsets.only(
                      //   left: 20,
                      //   right: 20,
                      // ),
                      child: TextFormField(
                        controller: kycController.qualification_details,
                        style: forminputstyle,
                        decoration: InputDecoration(
                            fillColor: const Color(0xffC6C6C6),
                            hintText: 'Enter the major',
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintStyle: forminputstyle,
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 15.00.hp,
                    ),
                    ButtonIconButton(
                      press: () {
                        // loginController.loginController(context: context);
                        if (kycController.qualification_details.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: 'pls enter qualification details');
                        } else {
                          Get.to(CouncilRegisterNumer());
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
