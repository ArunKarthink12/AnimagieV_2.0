import 'package:doctorapp/view/Dashboard/profile/profile.dart';
import 'package:doctorapp/view/Dashboard/time_booking/time_completedappointment.dart';

import '../allpackages.dart';
import 'appointment/appointment_screen.dart';
import 'home_page.dart';
import 'home_screen/blog_details.dart';
import 'home_screen/completed_appointment.dart';
import 'time_booking/dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomePage(),
    },
    {
      'page': const TimingCompletedAppointment(),
    },
    {
      'page': const Appointment(),
    },
    {
      'page': const Profile(),
    },
    {
      'page': const Dashboard(),
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, () async {
      await popupscreens();
    });
    super.initState();
  }

  // assets\images\successpopup.png
  popupscreens() {
    return AlertDialog(
      backgroundColor: Colors.black87,
      title: Image.asset("assets/images/successpopup.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
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
          Positioned(child: Center(child: _pages[_currentIndex]['page']))
        ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            left: 3.0,
            right: 3,
          ),
          child: BottomNavyBar(
            containerHeight: 55,
            selectedIndex: _currentIndex,
            showElevation: false,
            itemCornerRadius: 24,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            curve: Curves.easeIn,
            onItemSelected: (index) => setState(() => _currentIndex = index),
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Image.asset(
                  'assets/images/home.png',
                  height: 3.0.hp,
                  color: _currentIndex == 0 ? Colors.white : Colors.black,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Home'),
                ),
              ),
              BottomNavyBarItem(
                icon: Image.asset(
                  'assets/images/calendar.png',
                  height: 3.0.hp,
                  color: _currentIndex == 1 ? Colors.white : Colors.black,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Calendar'),
                ),
              ),
              BottomNavyBarItem(
                icon: Image.asset(
                  'assets/images/blog.png',
                  height: 3.0.hp,
                  color: _currentIndex == 2 ? Colors.white : Colors.black,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'Blog',
                      // style: GoogleFonts.poppins(
                      //     textStyle: TextStyle(
                      //         letterSpacing: 1,
                      //         fontSize: 9.00.sp,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                activeColor: appcolor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Image.asset(
                  'assets/images/user.png',
                  height: 3.0.hp,
                  color: _currentIndex == 3 ? Colors.white : Colors.black,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Profile'),
                ),
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Image.asset(
                  'assets/images/dash.png',
                  height: 3.0.hp,
                  color: _currentIndex == 4 ? Colors.white : Colors.black,
                ),
                title: const Padding(
                  padding: EdgeInsets.only(left: 1.0),
                  child: Text('Dashboard'),
                ),
              ),
            ],
          ),
        ));
  }
}

class TimeSlot extends StatefulWidget {
  const TimeSlot({super.key});

  @override
  State<TimeSlot> createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
 


//homescreen
