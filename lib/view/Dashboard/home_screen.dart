import 'package:doctorapp/view/Dashboard/profile/profile.dart';
import 'package:doctorapp/view/Dashboard/time_booking/time_completedappointment.dart';

import '../allpackages.dart';
import 'appointment/appointment_screen.dart';
import 'home_page.dart';
// import 'home_screen/blog_details.dart';
// import 'home_screen/completed_appointment.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: appcolor),
          selectedItemColor: appcolor,
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Image.asset(
                    'assets/images/newhome.png',
                    height: 3.0.hp,
                    color: _currentIndex == 0 ? Colors.white : Colors.black,
                  ),
                  backgroundColor:
                      _currentIndex == 0 ? appcolor : Colors.transparent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Image.asset(
                    'assets/images/newcal.png',
                    height: 3.0.hp,
                    color: _currentIndex == 1 ? Colors.white : Colors.black,
                  ),
                  backgroundColor:
                      _currentIndex == 1 ? appcolor : Colors.transparent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Image.asset(
                    'assets/images/newblogger.png',
                    height: 3.0.hp,
                    fit: BoxFit.cover,
                    color: _currentIndex == 2 ? Colors.white : Colors.black,
                  ),
                  backgroundColor:
                      _currentIndex == 2 ? appcolor : Colors.transparent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Image.asset(
                    'assets/images/newuserss.png',
                    height: 3.0.hp,
                    color: _currentIndex == 3 ? Colors.white : Colors.black,
                  ),
                  backgroundColor:
                      _currentIndex == 3 ? appcolor : Colors.transparent,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  child: Image.asset(
                    'assets/images/newnetwork.png',
                    height: 3.0.hp,
                    color: _currentIndex == 4 ? Colors.white : Colors.black,
                  ),
                  backgroundColor:
                      _currentIndex == 4 ? appcolor : Colors.transparent,
                ),
                label: ""),
          ],
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
