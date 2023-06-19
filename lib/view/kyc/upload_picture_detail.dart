import 'dart:io';

import 'package:doctorapp/view/allpackages.dart';
import 'package:doctorapp/view/kyc/processindicator/progressindicator.dart';

import '../Dashboard/home_screen.dart';

class UploadPictureDetail extends StatefulWidget {
  const UploadPictureDetail({super.key});

  @override
  State<UploadPictureDetail> createState() => _UploadPictureDetailState();
}

class _UploadPictureDetailState extends State<UploadPictureDetail> {
  var selectedindex = 0;
  var images = ['assets/images/dog.png', 'assets/images/cat.png'];
  var petname = ['dog', 'cat'];
  KycController kycController = Get.put(KycController());

  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      kycController.profile_pic(File(pickedImage.path));
    }
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
            '',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 20),
              child: InkWell(
                onTap: () {
                  Get.to(HomeScreen());
                },
                child: Text(
                  'SKIP',
                  style: forminputstyle,
                ),
              ),
            )
          ],
        ),
        body: Obx(() {
          return SafeArea(
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
                        percentage: .0,
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
                            '0% Completed',
                            style: threehundredtweleve,
                          ),
                        ),
                      ),
                      // ProgressIndicatorWithIcon(
                      //   percentage: .0,
                      // ),

                      // Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: Text(
                      //     '0% Completed',
                      //     style: forminputstyle,
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
                                    'assets/images/camera.png',
                                    color: appcolor,
                                  ))),
                          Positioned(
                              left: 12.0.wp,
                              child: InkWell(
                                onTap: () async {},
                                child: Container(
                                  height: 10.0.hp,
                                  width: 20.0.wp,
                                  child: Image.asset(
                                    'assets/images/doctor2.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 5.0.hp,
                      ),
                      Text(
                        'Upload Your picture..',
                        style: uploadpic,
                      ),
                      SizedBox(
                        height: 5.0.hp,
                      ),
                      InkWell(
                        child: Container(
                            height: 35.0.hp,
                            width: 70.0.wp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: screenbackground),
                            child: Center(
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      print('**');
                                      final XFile? pickedImage =
                                          await _picker.pickImage(
                                              source: ImageSource.gallery);
                                      if (pickedImage != null) {
                                        kycController.profile_pic(
                                            File(pickedImage.path));
                                      }
                                    },
                                    child: Container(
                                        child: kycController
                                                .profile_pic.value.path.isEmpty
                                            ? Column(
                                                children: [
                                                  SizedBox(
                                                    height: 24.0.hp,
                                                    width: 24.0.wp,
                                                    child: Image.asset(
                                                      'assets/images/uploaddocphoto.png',
                                                    ),
                                                  ),
                                                  Text(
                                                    "Click to Upload",
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  )
                                                ],
                                              )
                                            : Image.file(kycController
                                                .profile_pic.value)),
                                  ),
                                  Visibility(
                                      visible: kycController
                                              .profile_pic.value.path.isEmpty
                                          ? false
                                          : true,
                                      child: Positioned(
                                        right: 4.0.wp,
                                        top: 2.0.hp,
                                        child: CircleAvatar(
                                          radius: 10,
                                          backgroundColor: lightblue,
                                          child: Icon(
                                            Icons.close,
                                            color: forminputcolor,
                                            size: 13,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15.0.hp,
                      ),
                      ButtonIconButton(
                        press: () {
                          // loginController.loginController(context: context);
                          if (kycController.profile_pic.value.path.isEmpty) {
                            Fluttertoast.showToast(msg: 'pls upload image');
                          } else {
                            Get.to(const DoctorName());
                          }
                        },
                        bordercolor: buttoncolor,
                        text: 'CONTINUE',
                      ),
                    ])),
              ),
            ],
          )));
        }));
  }
}
