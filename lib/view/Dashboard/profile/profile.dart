import 'package:doctorapp/view/Dashboard/profile/personaldetails/view/personal_details.dart';
import 'package:doctorapp/view/Dashboard/profile/professional_details.dart';
import 'package:doctorapp/view/Dashboard/profile/support.dart';
import 'package:doctorapp/view/Dashboard/profile/terms&condition.dart';

import '../../allpackages.dart';
import '../../notification.dart';
import 'change_password/change_password.dart';
import 'edit_clinic_details.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'PROFILE',
          style: sixteeneighthundred000958,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(top: 0.0, right: 7),
              child: InkWell(
                  onTap: () {
                    Get.to(NotificationPage());
                  },
                  child: Image.asset('assets/images/notification.png')))
        ],
      ),
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
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/doctor1.png')),
                      title: Text(
                        'Dr.John Millens',
                        style: sixhundredsixteen,
                      ),
                      subtitle: Text(
                        'Bachelor of Veterinary Science',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 12.00,
                              color: Color(0xff525A66),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const OptionList(),
                    ),
                  ],
                )),
          ),
        ],
      )),
    );
  }
}

class OptionList extends StatefulWidget {
  const OptionList({Key? key}) : super(key: key);

  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  LoginController loginController = Get.put(LoginController());
  var menuoptions = [
    'Personal Details',
    'Professional Details',
    'Appointment Timing',
    'Clinic Details',
    'Support',
    'Terms & Condition',
    'Change Password',
  ];
  var images = [
    'assets/images/personal.png',
    'assets/images/professional.png',
    'assets/images/date.png',
    'assets/images/clinic1.png',
    'assets/images/support.png',
    'assets/images/terms.png',
    'assets/images/password.png',
  ];
  var menuscreens = [
    const PersonalDetails(),
    const ProfessionalDetails(),
    const EditTimingProfile(),
    const EditClinicDetails(),
    const Support(),
    const TermsConditionScreen(),
    const ChangePassword(),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuoptions.length,
              itemBuilder: (context, index) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(menuscreens[index]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 0),
                          child: Container(
                            height: 8.0.hp,
                            width: 85.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 5, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    images[index],
                                    height: 3.0.hp,
                                  ),
                                  SizedBox(
                                    width: 5.0.wp,
                                  ),
                                  Container(
                                    width: 60.0.wp,
                                    child: Text(
                                      menuoptions[index],
                                      style: fourhundredtweleve,
                                    ),
                                  ),
                                  index < 4
                                      ? Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                              child: Text('Edit',
                                                  style: GoogleFonts.poppins(
                                                      textStyle: const TextStyle(
                                                          letterSpacing: 0.2,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          fontSize: 12.00,
                                                          color:
                                                              Color(0xff0F52BA),
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                        )
                                      : Container()
                                ])
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Divider(
                            height: 1.0.hp,
                          ),
                        ),
                      )
                    ]);
              }),
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                // contentPadding:
                //     EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                title: Stack(
                  children: [
                    Container(
                      height: 6.0.hp,
                      width: 100.0.wp,
                      child: Text(
                        "logout",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14.00,
                                color: Color(0xff262626),
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 10.0.sp,
                        backgroundColor: Color(0xffDDE7F5),
                        child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.close,
                                size: 15, color: headingtext)),
                      ),
                    ),
                  ],
                ),
                content: Text(
                  "Are you sure to logout from the Jooju App?",
                  style: fourhundredten,
                ),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 5.0.hp,
                        width: 30.0.wp,
                        decoration: BoxDecoration(
                            border: Border.all(color: appcolor),
                            borderRadius: BorderRadius.circular(8)),
                        child: ElevatedButton(
                          onPressed: () {
                            print('clickk');
                            loginController.logout();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: screenbackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'YES',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        letterSpacing: 0.2,
                                        fontSize: 12.00,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5.0.hp,
                            width: 30.0.wp,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff0F52BA),
                                    Color(0xff003586)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: buttoncolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'NO',
                                    style: buttontextstyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              right: 2.0.wp,
                              child: Image.asset('assets/images/buttonimg.png'))
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(left: 20.0.sp),
            child: Container(
              height: 8.0.hp,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logout.png',
                    height: 3.0.hp,
                  ),
                  SizedBox(
                    width: 8.0.wp,
                  ),
                  Text(
                    'Logout',
                    style: fourhundredtweleve,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
