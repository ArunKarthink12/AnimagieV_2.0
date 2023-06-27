import 'package:intl/intl.dart';

import '../../allpackages.dart';
import '../appointment/session_details.dart';
import 'completed_view_details.dart';

class CompletedAppointment extends StatefulWidget {
  const CompletedAppointment({super.key});

  @override
  State<CompletedAppointment> createState() => _CompletedAppointmentState();
}

class _CompletedAppointmentState extends State<CompletedAppointment> {
  var selectedindex = 0;
  var filtersname = [
    ' A-Z',
    'Z-A',
    'Price, low to high',
    'Price, high to low',
    'Old to new',
    'New to old',
  ];
  @override
  showdialogfunc() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sort by',
                              style: uploadpic,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffDDE7F5),
                                  radius: 14,
                                  child: Icon(
                                    Icons.close,
                                    size: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 38.0.hp,
                          width: 100.0.wp,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: filtersname.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedindex = index;
                                                });
                                              },
                                              child: Container(
                                                height: 3.0.hp,
                                                width: 6.0.wp,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                            selectedindex == index
                                                ? Positioned(
                                                    top: 0.7.hp,
                                                    left: 1.3.wp,
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          selectedindex = index;
                                                        });
                                                      },
                                                      child: Icon(
                                                        Icons.circle,
                                                        size: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ))
                                                : Container()
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2.0.wp,
                                      ),
                                      Text(
                                        filtersname[index].toString(),
                                        style: fourhundredtweleve,
                                      ),
                                      SizedBox(
                                        height: 1.0.hp,
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                        Center(
                          child: ButtonIconButton(
                            press: () {
                              // loginController.loginController(context: context);
                              // Get.to(const UploadPictureDetail());
                              //Get.to(const HomeScreen());
                              Get.back();
                            },
                            bordercolor: buttoncolor,
                            text: 'APPLY',
                          ),
                        ),
                      ])));
        });
      },
    );
  }

  TextEditingController dob = TextEditingController();

  ScrollController _scrollController = ScrollController();

  _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  DateTime selectedDate = DateTime.now();

  selectDate(
    BuildContext context,
  ) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: dob.text.isNotEmpty
          ? DateFormat("dd-MM-yyyy").parse(dob.text)
          : DateTime(2015),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (selected != null && selected != selectedDate) {
      dob.text = DateFormat('dd-MM-yyyy').format(selected);
      setState(() {});
    } else {
      return "";
    }
  }

  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body:
        Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 6.0.hp,
                    width: 40.0.wp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 9.0.sp),
                          child: Text(
                              dob.text.length == 0 ? "" : dob.text.toString()),
                        ),
                        GestureDetector(
                          onTap: () {
                            selectDate(context);
                            //calender
                          },
                          child: Padding(
                              padding: EdgeInsets.only(right: 9.0.sp),
                              child: Image.asset('assets/images/calendar.png')),
                        ),
                      ],
                    )
                    // child: TextFormField(
                    //   style: forminputstyle,
                    //   decoration: InputDecoration(
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         borderSide: const BorderSide(
                    //             color: screenbackground, width: 0.5),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(5.0),
                    //         borderSide: const BorderSide(
                    //             color: screenbackground, width: 1),
                    //       ),
                    //       hintText: 'Select Date',
                    //       suffixIcon: Image.asset(
                    //         'assets/images/calendar.png',
                    //         color: Colors.black,
                    //       ),
                    //       contentPadding:
                    //           const EdgeInsets.only(left: 10, top: 20),
                    //       hintStyle: forminputstyle,
                    //       border: const OutlineInputBorder(
                    //         gapPadding: 4,
                    //       )),
                    // ),
                    ),
                SizedBox(
                  width: 4.0.wp,
                ),
                InkWell(
                  onTap: () {
                    showdialogfunc();
                  },
                  child: Container(
                    height: 6.0.hp,
                    width: 15.0.wp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/filter.png',
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.0.hp,
            ),
            Text(
              'Completed Appointment',
              style: uploadpic,
            ),
            SizedBox(
              height: 1.0.hp,
            ),
            Container(
              height: 100.0.hp,
              width: 100.0.wp,
              child: ListView.builder(
                  //   controller: _scrollController,
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 28.0.hp,
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
                                    width: 23.0.wp,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffe0f5dd)),
                                    child: Center(
                                        child: Text('Completed',
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    letterSpacing: 0.2,
                                                    fontSize: 11.00,
                                                    color: Color(0xff27BA0F),
                                                    fontWeight:
                                                        FontWeight.w600)))),
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
                                        Image.asset(
                                            'assets/images/calendar.png'),
                                        Text(
                                          '24 Mar,2023',
                                          style: forminputstyle,
                                        ),
                                      ],
                                    )),
                                Container(
                                    width: 40.0.wp,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset('assets/images/clock.png'),
                                        Text(
                                          '10.00am-12.00 pm',
                                          style: forminputstyle,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 2.00.hp,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(ViewDetails());
                                },
                                child: Text('View Details',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            letterSpacing: 0.2,
                                            fontSize: 12.00,
                                            color: Color(0xff0F52BA),
                                            fontWeight: FontWeight.w400))),
                              ),
                            ),
                            SizedBox(
                              height: 2.00.hp,
                            ),
                            Center(
                                child: AddPrescription(
                                    text: 'Add Prescription &  Health Card',
                                    press: () {
                                      Get.to(AddDetails());
                                    })),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
