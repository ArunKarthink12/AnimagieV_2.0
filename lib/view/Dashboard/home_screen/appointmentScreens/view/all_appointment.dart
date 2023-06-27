// import 'dart:html';

// import 'dart:io';

import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/controller/appointment_controller.dart';
import 'package:doctorapp/view/Dashboard/home_screen/appointmentScreens/controller/attenNowController.dart';
import 'package:doctorapp/view/Dashboard/home_screen/joinsession.dart';
// import 'package:flutter_zoom_sdk/zoom_options.dart';
// import 'package:flutter_zoom_sdk/zoom_view.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/services.dart';
import '../../../../allpackages.dart';
import '../../../appointment/session_details.dart';

class AllAppointment extends StatefulWidget {
  const AllAppointment({super.key});

  @override
  State<AllAppointment> createState() => _AllAppointmentState();
}

class _AllAppointmentState extends State<AllAppointment> {
  AppointmentController appointmentController =
      Get.put(AppointmentController());
  AttenNowController attenNowController = Get.put(AttenNowController());
  TextEditingController meetingPasswordController = TextEditingController();
  TextEditingController meetingIdController = TextEditingController();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   appointmentController.appointmentListControllerFunction();
  //   attenNowController.attenNowControllerFunction();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body:
        Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Appointment',
            style: fourteensixhundred2B2E35,
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 80.0.hp,
            width: 100.0.wp,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 25.0.hp,
                    width: 100.00.wp,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/dd.png'),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Krish (Dog)',
                                  style: sixhundredfourteen,
                                ),
                                Container(
                                  height: 3.0.hp,
                                  width: 20.0.wp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: lightblue,
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Todays',
                                    style: elevenixhundred0F52BA,
                                  )),
                                ),
                              ],
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Male - 2 yr old',
                                    style: forminputstyle,
                                  ),
                                  Text(
                                    'ID:36718',
                                    style: fourhundredtweleve,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  //  height: 2.0.hp,
                                  width: 30.0.wp,
                                  decoration: BoxDecoration(
                                      // border: Border.all(),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/images/calendar.png'),
                                      Text(
                                        '24 Mar,2023',
                                        style: forminputstyle,
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                width: 2.0.wp,
                              ),
                              Container(
                                  width: 40.0.wp,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/images/clock.png'),
                                      Text(
                                        '10.00am-12.00 pm',
                                        style: forminputstyle,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 2.00.hp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 5.0.hp,
                                width: 40.0.wp,
                                decoration: BoxDecoration(
                                  border: Border.all(color: buttoncolor),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Get.to(JoinSession());
                                      // Get.to(AddDetails());
                                    },
                                    child: Center(
                                        child: Text(
                                      'VIEW DETAILS',
                                      style: twelvesixhundred0F52BA,
                                    ))),
                              ),
                              JoinButton(
                                text: 'JOIN SESSION',
                                press: () {
                                  Get.to(AddDetails());
                                  // openZoomMeeting();
                                  // joinMeeting(context);
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
      // ),
    );
  }

  // void openZoomMeeting() async {
  //   String meetingUrl =
  //       "https://us05web.zoom.us/j/3305992811?pwd=bStvRUQvVnVJd1puOXozbjN1ZENmZz09";

  //   if (await canLaunch(meetingUrl)) {
  //     await launch(meetingUrl);
  //   } else {
  //     throw 'Could not launch Zoom meeting.';
  //   }
  // }
  // joinMeeting(BuildContext context) {
  //   bool _isMeetingEnded(String status) {
  //     var result = false;

  //     if (Platform.isAndroid)
  //       result = status == "MEETING_STATUS_DISCONNECTING" ||
  //           status == "MEETING_STATUS_FAILED";
  //     else
  //       result = status == "MEETING_STATUS_IDLE";

  //     return result;
  //   }

  //   // if (meetingIdController.text.isNotEmpty &&
  //   //     meetingPasswordController.text.isNotEmpty) {
  //   ZoomOptions zoomOptions = new ZoomOptions(
  //     domain: "https://pwa.zoom.us/wc/meetings",
  //     appKey: "0WeKBZGQRGC0KYaFeTdCg", //API KEY FROM ZOOM - Sdk API Key
  //     appSecret:
  //         "mO4Mp07TQMSfQ9VrGotcRg", //API SECRET FROM ZOOM - Sdk API Secret
  //   );
  //   var meetingOptions = new ZoomMeetingOptions(
  //       userId:
  //           '551416', //pass username for join meeting only --- Any name eg:- EVILRATT.
  //       meetingId: '330 599 2811 ', //pass meeting id for join meeting only
  //       meetingPassword:
  //           'bStvRUQvVnVJd1puOXozbjN1ZENmZz09', //pass meeting password for join meeting only
  //       disableDialIn: "true",
  //       disableDrive: "true",
  //       disableInvite: "true",
  //       disableShare: "true",
  //       disableTitlebar: "false",
  //       viewOptions: "true",
  //       noAudio: "false",
  //       noDisconnectAudio: "false");

  //   var zoom = ZoomView();
  //   zoom.initZoom(zoomOptions).then((results) {
  //     if (results[0] == 0) {
  //       zoom.onMeetingStatus().listen((status) {
  //         print("[Meeting Status Stream] : " + status[0] + " - " + status[1]);
  //         if (_isMeetingEnded(status[0])) {
  //           print("[Meeting Status] :- Ended");
  //           // timer.cancel();
  //         }
  //       });
  //       print("listen on event channel");
  //       // zoom.joinMeeting(meetingOptions).then((joinMeetingResult) {
  //       //   timer = Timer.periodic(new Duration(seconds: 2), (timer) {
  //       //     zoom.meetingStatus(meetingOptions.meetingId!).then((status) {
  //       //       print("[Meeting Status Polling] : " +
  //       //           status[0] +
  //       //           " - " +
  //       //           status[1]);
  //       //     });
  //       //   });
  //       // });
  //     }
  // }).catchError((error) {
  //   print("[Error Generated] : " + error);
  // });
  // }
  // else {
  //   if (meetingIdController.text.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text("Enter a valid meeting id to continue."),
  //     ));
  //   } else if (meetingPasswordController.text.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text("Enter a meeting password to start."),
  //     ));
  //   }
  // }
}

  // void openZoomMeeting() async {
  //   String meetingUrl =
  //       "zoommtg://us05web.zoom.us/j/3305992811?pwd=bStvRUQvVnVJd1puOXozbjN1ZENmZz09";

  //   try {
  //     if (await canLaunch(meetingUrl)) {
  //       joinMeeting(context);
  //       await launch(meetingUrl);
  //     } else {
  //       throw 'Could not launch Zoom meeting: $meetingUrl';
  //     }
  //   } catch (e) {
  //     print('Error launching Zoom meeting: $e');
  //   }
  // }
// }
// 0vXGLd
// Meeting ID
// Meeting ID

// 330 599 2811
