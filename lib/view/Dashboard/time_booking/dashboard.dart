import 'package:doctorapp/view/Dashboard/time_booking/payment.dart';

import '../../allpackages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: headingtext,
          ),
          title: Text(
            'DASHBOARD',
            style: sixteeneighthundred000958,
          ),
        ),
        body: Stack(
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
              child: Container(
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
                      ),
                      child: SingleChildScrollView(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Container(
                              height: 9.0.hp,
                              width: 100.0.wp,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Total Appointment',
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        letterSpacing: 0.2,
                                                        fontSize: 12.00,
                                                        color:
                                                            Color(0xff000958),
                                                        fontWeight:
                                                            FontWeight.w700)),
                                              ),
                                              Text(
                                                '100',
                                                style: forminputstyle,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Total Earning',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      letterSpacing: 0.2,
                                                      fontSize: 12.00,
                                                      color: Color(0xff000958),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Text(
                                                'Rs.10,000',
                                                style: forminputstyle,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Credited',
                                                style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      letterSpacing: 0.2,
                                                      fontSize: 12.00,
                                                      color: Color(0xff000958),
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Text(
                                                'Rs.10,000',
                                                style: forminputstyle,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Text(
                                      //       '100',
                                      //       style: forminputstyle,
                                      //     ),
                                      //     SizedBox(
                                      //       width: 37.0.wp,
                                      //     ),
                                      //     Text(
                                      //       'Rs.10,000',
                                      //       style: forminputstyle,
                                      //     ),
                                      //     SizedBox(
                                      //       width: 15.0.wp,
                                      //     ),
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Container(
                              child: Image.asset('assets/images/bar1.png'),
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Container(
                              // height: 5.0.hp,
                              // width: 80.0.wp,
                              // color: Colors.amber,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.0.sp),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'This week\'s income',
                                          style: forminputstyle,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs.1,000',
                                              style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                      letterSpacing: 0.2,
                                                      fontSize: 18.0.sp,
                                                      color: Color(0xff18273B),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            SizedBox(
                                              width: 1.0.wp,
                                            ),
                                            Container(
                                              height: 3.0.hp,
                                              width: 15.0.wp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Color(0xff0F52BA),
                                                    Color(0xff003586)
                                                  ],
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    '34%',
                                                    style: GoogleFonts.poppins(
                                                        textStyle: const TextStyle(
                                                            letterSpacing: 0.2,
                                                            fontSize: 10.00,
                                                            color:
                                                                screenbackground,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_outward_rounded,
                                                    color: screenbackground,
                                                    size: 15,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Balance',
                                        style: forminputstyle,
                                      ),
                                      Container(
                                        // width: 90.0.wp,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Rs.2,000',
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      letterSpacing: 0.2,
                                                      fontSize: 20.00,
                                                      color: Color(0xff18273B),
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.0.wp,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'History',
                                    style: sixhundredtweleve,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Get.to(PaymentHistory());
                                      },
                                      child: Text('View All',
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  letterSpacing: 0.2,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontSize: 12.00,
                                                  color: Color(0xff0F52BA),
                                                  fontWeight:
                                                      FontWeight.w600))))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3.0.hp,
                            ),
                            Container(
                              height: 100.0.hp,
                              child: ListView.builder(
                                  itemCount: 10,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 18.0.hp,
                                      width: 100.0.wp,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0,
                                              right: 20.0,
                                              top: 5,
                                              bottom: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ListTile(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 0,
                                                        horizontal: 0),
                                                title: Text(
                                                  'Appointment',
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        letterSpacing: 0.2,
                                                        fontSize: 12.00,
                                                        color:
                                                            Color(0xff000000),
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                                trailing: Text(
                                                  '+Rs.5,000',
                                                  style: GoogleFonts.poppins(
                                                      textStyle:
                                                          const TextStyle(
                                                              letterSpacing:
                                                                  0.2,
                                                              fontSize: 18.00,
                                                              color: Color(
                                                                  0xff0F52BA),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                ),
                                                leading: Container(
                                                    height: 5.0.hp,
                                                    width: 10.0.wp,
                                                    child: Image.asset(
                                                        'assets/images/arrow_down.png'),
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color:
                                                            Color(0xffE2EAF7))),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Payment Received',
                                                    style: GoogleFonts.poppins(
                                                      textStyle:
                                                          const TextStyle(
                                                              letterSpacing:
                                                                  0.2,
                                                              fontSize: 10.00,
                                                              color: Color(
                                                                  0xff0F52BA),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '28 Jan, 2023',
                                                        style: forminputsmall,
                                                      ),
                                                      SizedBox(
                                                        width: 5.0.wp,
                                                      ),
                                                      Text(
                                                        '12.00 PM',
                                                        style: forminputsmall,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 1.0.hp,
                                              ),
                                              Text(
                                                '01/01/2023-01/02/2023',
                                                style: fourhundredten,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ])))),
            ),
          ],
        ));
  }
}
