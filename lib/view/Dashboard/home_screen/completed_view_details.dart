import '../../allpackages.dart';

class ViewDetails extends StatefulWidget {
  const ViewDetails({super.key});

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  var selectindex = 0;
  List weight = ['250 g', '500 g', '1 kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.0.hp,
                        width: 100.0.wp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/viewdog.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(bottom: 8.0.hp, left: 2.0.wp),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffE3E2D7),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 2.0.hp,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KRISH (DOG)',
                              style: toptitleStylebold,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              'Male - 2 yr old',
                              style: forminputstyle,
                            ),
                            ListTile(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0),
                                title: Container(
                                  // /  height: 7.0.hp,
                                  width: 60.0.wp,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/clock.png'),
                                      SizedBox(
                                        width: 2.0.wp,
                                      ),
                                      Text(
                                        '10:00 am - 10:30 am',
                                        style: forminputstyle,
                                      )
                                    ],
                                  ),
                                ),
                                trailing: Container(
                                  // /height: 7.0.hp,
                                  width: 40.0.wp,
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/calendar.png'),
                                      SizedBox(
                                        width: 2.0.wp,
                                      ),
                                      Text(
                                        '25 Mar, 2023',
                                        style: forminputstyle,
                                      )
                                    ],
                                  ),
                                )),
                            Divider(
                              thickness: 2,
                            ),
                            ListTile(
                              minLeadingWidth: 12.0.wp,
                              leading: const CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                    AssetImage('assets/images/editclinic.png'),
                              ),
                              title: Text(
                                'John Clinic',
                                style: sixhundredtweleve,
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  '456 Pradhan Thiru, No. 789, Perunagar, Tamil Nadu 600028',
                                  style: fourhundredtweleve,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.0.hp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Prescription',
                                  style: uploadpic,
                                ),
                                Text(
                                  'Edit',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12.00,
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff0F52BA),
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 1.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et danim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et danim id est laborum. ''',
                              style: forminputstyle,
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 1.0.hp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Notes',
                                  style: uploadpic,
                                ),
                                SizedBox(
                                  height: 1.0.hp,
                                ),
                                Text(
                                  'Edit',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12.00,
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff0F52BA),
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et danim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et danim id est laborum. ''',
                              style: forminputstyle,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
