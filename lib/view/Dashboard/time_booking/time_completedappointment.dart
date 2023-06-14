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
                              color: headingtext,
                              fontWeight: FontWeight.w400))
                    ]),
              ),
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/notification.png')),
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
