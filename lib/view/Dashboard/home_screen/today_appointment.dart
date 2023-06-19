import '../../allpackages.dart';
import '../appointment/session_details.dart';
import 'joinsession.dart';

class TodayAppointment extends StatefulWidget {
  const TodayAppointment({super.key});

  @override
  State<TodayAppointment> createState() => _TodayAppointmentState();
}

class _TodayAppointmentState extends State<TodayAppointment> {
  @override
  Widget build(BuildContext context) {
    return
        //  Scaffold(
        //     body:
        Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today Appointment',
                    style: sixhundredfourteen,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Krish (Dog)',
                                            style: sixhundredfourteen,
                                          ),
                                          Container(
                                            height: 3.0.hp,
                                            width: 20.0.wp,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
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
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            //  height: 2.0.hp,
                                            width: 30.0.wp,
                                            decoration: BoxDecoration(
                                                // border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset(
                                                    'assets/images/calendar.png'),
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
                                                Image.asset(
                                                    'assets/images/clock.png'),
                                                Text(
                                                  '10.00am-12.00.pm',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 5.0.hp,
                                          width: 40.0.wp,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: buttoncolor),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: InkWell(
                                              onTap: () {
                                                Get.to(AddDetails());
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
                                              Get.to(JoinSession());
                                            })
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }))
                ])
            // )
            );
  }
}
