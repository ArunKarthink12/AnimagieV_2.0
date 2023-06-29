import 'package:doctorapp/view/Dashboard/appointment/session_details.dart';
import 'package:doctorapp/view/Dashboard/home_screen/joinsession.dart';

import '../allpackages.dart';
import '../notification.dart';
import 'home_screen/appointmentScreens/view/all_appointment.dart';
import 'home_screen/completed_appointment.dart';
import 'home_screen/today_appointment.dart';
import 'home_screen/upcoming_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // var selectedindex = 0;
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: myTabs.length);
    // TODO: implement initState
    // Future.delayed(Duration.zero, () async {
    //   await popupscreens();
    // });
    super.initState();
  }

  // @override
  // void dispose() {
  //   tabController!.dispose();
  //   super.dispose();
  // }

  // assets\images\successpopup.png
  // popupscreens() {
  //   return Dialog(
  //     child: Image.asset("assets/images/successpopup.png"),

  //     backgroundColor: Colors.black87,

  //   );
  // }

// [
//                           const Tab(
//                             child: Text(
//                               'New',
//                             ),
//                           ),
//                           const Tab(
//                             child: Text(
//                               'Todays',
//                             ),
//                           ),
//                           const Tab(
//                             child: Text(
//                               'Upcoming',
//                             ),
//                           ),
//                           const Tab(
//                             child: Text(
//                               'Completed',
//                             ),
//                           ),
//                         ],
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'New'),
    Tab(text: 'Todays'),
    Tab(text: 'Upcoming'),
    Tab(text: 'Completed'),
  ];
  // static const List bodytab = [
  //   AllAppointment(),
  //   TodayAppointment(),
  //   UpcomingDetails(),
  //   CompletedAppointment()
  // ];
  Widget allAppointment() {
    return Padding(
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
                                        '10.00 am-12.00 pm',
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: bgcolor,
            leadingWidth: 50.0.wp,
            leading: ListTile(
              minLeadingWidth: 20.0.wp,
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Dr. John Wilson!',
                          style: TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 20.00,
                              color: headingtext,
                              fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 1.0.hp,
                      ),
                      const Text('Welcome to Jooju',
                          style: TextStyle(
                              letterSpacing: 0.2,
                              fontSize: 12.00,
                              color: Colors.black,
                              fontWeight: FontWeight.w400))
                    ]),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: InkWell(
                      onTap: () {
                        Get.to(NotificationPage());
                      },
                      child: Container(
                          width: 5.0.wp,
                          height: 5.0.hp,
                          child:
                              Image.asset('assets/images/notification.png')))),
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
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10,
                  top: 10,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TabBar(
                        onTap: (index) {
                          setState(() {});
                        },

                        isScrollable: true,
                        unselectedLabelColor: Colors.grey,
                        indicator: const BoxDecoration(),
                        labelColor: const Color(0xff0F52BA),
                        dividerColor: const Color(0xff0F52BA),
                        labelStyle: blog,
                        unselectedLabelStyle: forminputstyle,
                        // ignore: prefer_const_literals_to_create_immutables
                        controller: tabController,
                        tabs: myTabs,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(controller: tabController, children: [
                        AllAppointment(),
                        TodayAppointment(),
                        UpcomingDetails(),
                        CompletedAppointment()
                      ]),
                    )
                  ],
                ),
              ),
            ),
          )),
    ));
  }
}
