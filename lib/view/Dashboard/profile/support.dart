import 'package:doctorapp/view/Dashboard/profile/support_create.dart';

import '../../allpackages.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  // var _selectedGender;
  var genderlist = ['male', 'female', 'I dont know'];
  var newteredlist = ['no', 'yes', 'I dont know'];
  var selectedindex = 0;
  var newteredindex = 0;
  var foodindex = 0;
  var petfood = [
    'Commercial food',
    'Fresh or uncooked food',
    'Home & Cooked food',
    'Doctor_approch food'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgcolor,
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            'SUPPORT',
            style: sixteeneighthundred000958,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.add),
          backgroundColor: buttoncolor,
          onPressed: () {
            Get.to(SupportCreate());
          },
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                height: 100.0.hp,
                width: 100.0.wp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 5),
                  child: Container(
                    height: 100.0.hp,
                    width: 100.0.wp,
                    child: ListView.builder(
                        itemCount: 3,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 25.0.hp,
                            width: 100.0.hp,
                            child: Card(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Ticket Number:',
                                          style: fivehundredtweleve,
                                        ),
                                        Text(
                                          '#123456',
                                          style: fivehundredtweleve,
                                        ),
                                        SizedBox(
                                          width: 15.0.wp,
                                        ),
                                        Container(
                                          height: 4.0.hp,
                                          width: 25.0.wp,
                                          decoration: BoxDecoration(
                                              color: lightblue,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                          child: Center(
                                            child: Text(
                                              'Pending',
                                              style: upcomingbutton,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Query Selected to:',
                                          style: fourhundredten000000,
                                        ),
                                        Text(
                                          'Appointment',
                                          style: fourhundredten,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Select your query type:',
                                          style: fourhundredten000000,
                                        ),
                                        Text(
                                          'Complaint regarding customer',
                                          style: fourhundredten,
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          child: Text(
                                            'Your Query',
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    letterSpacing: 0.2,
                                                    fontSize: 11.00,
                                                    color: Color(0xff000000),
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            top: 7.0,
                                          ),
                                          child: Text(
                                            '''The last appointment with Rajan got disappointed as he spoke wrong way and rudely''',
                                            style: fourhundredten,
                                          ),
                                        )
                                      ])
                                ],
                              ),
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ));
  }
}
