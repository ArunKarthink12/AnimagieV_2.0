import 'package:doctorapp/view/notification.dart';

import '../../allpackages.dart';
import '../home_screen/appointmentScreens/view/all_appointment.dart';
import '../home_screen/completed_appointment.dart';
import '../home_screen/today_appointment.dart';
import '../home_screen/upcoming_details.dart';

class TimingCompletedAppointment extends StatefulWidget {
  const TimingCompletedAppointment({super.key});

  @override
  State<TimingCompletedAppointment> createState() =>
      _TimingCompletedAppointmentState();
}

class _TimingCompletedAppointmentState
    extends State<TimingCompletedAppointment> {
  var selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      initialIndex: 3,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 70.0.wp,
            toolbarHeight: 10.0.hp,
            elevation: 0,
            backgroundColor: bgcolor,
            leading: SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 25.0.sp),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.0.hp,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 80.0.wp,
                        child: Text('Dr. Ranjith Wilson',
                            style: TextStyle(
                                // letterSpacing: 0.2,
                                fontSize: 17.0.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w800)),
                      ),
                      SizedBox(
                        height: 1.0.hp,
                      ),
                      Container(
                        color: Colors.transparent,
                        width: 43.0.wp,
                        child: Text('Welcome to Jooju',
                            style: TextStyle(
                                // letterSpacing: 0.2,
                                fontSize: 9.0.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400)),
                      )
                    ]),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: InkWell(
                    onTap: () {
                      Get.to(NotificationPage());
                    },
                    child: Container(
                        width: 5.0.wp,
                        height: 5.0.hp,
                        child: Image.asset('assets/images/notification.png'))),
              ),
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
                  top: 30,
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
                          setState(() {
                            selectedindex = index;
                          });
                        },
                        isScrollable: true,
                        unselectedLabelColor: Colors.grey,
                        indicator: const BoxDecoration(),
                        labelColor: const Color(0xff0F52BA),
                        dividerColor: const Color(0xff0F52BA),
                        labelStyle: blog,
                        unselectedLabelStyle: forminputstyle,

                        // ignore: prefer_const_literals_to_create_immutables
                        tabs: [
                          const Tab(
                            child: Text(
                              'New',
                            ),
                          ),
                          const Tab(
                            child: Text(
                              'Today',
                            ),
                          ),
                          const Tab(
                            child: Text(
                              'Upcoming',
                            ),
                          ),
                          const Tab(
                            child: Text(
                              'Completed',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: TabBarView(children: [
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
