import '../../allpackages.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
  var newteredlist = ['no', 'yes', 'I don\'t know'];

  var newteredindex = 0;

  var petfood = [
    'Commercial food',
    'Fresh or uncooked food',
    'Home & Cooked food',
    'Doctor_approch food'
  ];
  var selectvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back,
              color: headingtext,
            ),
          ),
          title: Text(
            'PAYMENT HISTORY',
            style: sixteeneighthundred000958,
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
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
                          fit: BoxFit.cover,
                        )),
                      ),
                      Positioned(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 7.0.hp,
                                  width: 45.0.wp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: TextFormField(
                                    style: forminputstyle,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: const BorderSide(
                                              color: screenbackground,
                                              width: 0.5),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          borderSide: const BorderSide(
                                              color: screenbackground,
                                              width: 1),
                                        ),
                                        hintText: 'Select Month',
                                        suffixIcon: Image.asset(
                                            'assets/images/calendar.png'),
                                        hintStyle: forminputstyle,
                                        border: const OutlineInputBorder(
                                          gapPadding: 4,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.0.hp,
                            ),
                            Container(
                              height: 100.0.hp,
                              child: ListView.builder(
                                  itemCount: 10,
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
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8.0),
                                                    child: Row(
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
                                                    ),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
