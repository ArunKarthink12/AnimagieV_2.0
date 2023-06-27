import '../../allpackages.dart';

class JoinSession extends StatefulWidget {
  const JoinSession({super.key});

  @override
  State<JoinSession> createState() => _JoinSessionState();
}

class _JoinSessionState extends State<JoinSession> {
  var selectindex = 0;
  List weight = ['250 g', '500 g', '1 kg'];
  var title = [
    "General Symptoms",
    'Eye Symptoms',
    'Musculoskeletal symptoms',
    'Weight and Body condition Symptoms',
    'Gastrointestinal Symptoms',
    'Nervous System Symptoms'
  ];
  var subtitle = [
    "Reduced activity level, Circling",
    'Increased discharge from the eye',
    'Musculoskeletal symptoms',
    'Increased appetite(polyphagia) , Body odors',
    'Bad breath(halitosis)',
    'Temporary unconsious(Stupor)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 237, 241, 245),
        // appBar: AppBar(
        //     automaticallyImplyLeading: false,
        //     leadingWidth: 10.0.wp,
        //     toolbarHeight: 30.0.hp,
        //     flexibleSpace: Container(
        //       decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage(
        //             'assets/images/banner2.jpg',
        //           ),
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     backgroundColor: Colors.transparent,
        //     leading: Padding(
        //       padding: EdgeInsets.only(bottom: 20.0.hp),
        //       child: IconButton(
        //         icon: Icon(Icons.arrow_back),
        //         onPressed: () {},
        //       ),
        //     )),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0.hp,
                    width: 100.0.wp,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
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
                        alignment: Alignment.topLeft,
                        // heightFactor: 7,
                        child: Padding(
                          padding: EdgeInsets.only(top: 28.0.sp, left: 2.0.wp),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
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
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0.sp),
                          child: Text(
                            'Krish (Dog)',
                            style: toptitleStylebold,
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0.sp),
                          child: Text(
                            'Male - 2 yr old',
                            style: forminputstyle,
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        // ListTile(
                        //   // contentPadding: EdgeInsets.symmetric(
                        //   //     vertical: 0, horizontal: 0),
                        //   title:
                        Container(
                          height: 2.0.hp,
                          // color: Colors.amber,
                          // width: 60.0.wp,
                          margin: EdgeInsets.only(left: 12.0.sp),
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_alarms_sharp,
                                size: 15,
                                color: iconcolor,
                              ),
                              Text(
                                '10:00 am - 10:30 am',
                                style: forminputstyle,
                              ),
                              SizedBox(
                                width: 3.0.wp,
                              ),
                              Icon(Icons.calendar_month_outlined,
                                  color: iconcolor, size: 15),
                              SizedBox(
                                width: 2.0.wp,
                              ),
                              Text(
                                '25 Mar, 2023',
                                style: forminputstyle,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Divider(
                          thickness: 2,
                        ),

                        Container(
                          // height: 40.0.hp,
                          // width: 100.0.wp,
                          padding: EdgeInsets.zero,
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: title.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  // minVerticalPadding: 0,

                                  // contentPadding: EdgeInsets.symmetric(
                                  //     vertical: 0.0, horizontal: 0.0),
                                  dense: true,
                                  title: Text(
                                    title[index].toString(),
                                    style: toptitleStyle,
                                  ),
                                  subtitle: Text(
                                    subtitle[index].toString(),
                                    style: forminputstyle,
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        ButtonIconButton(
                            text: 'JOIN SESSION',
                            bordercolor: Colors.blue,
                            press: () {
                              Get.back();
                            }),
                        SizedBox(
                          height: 3.0.hp,
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }
}
