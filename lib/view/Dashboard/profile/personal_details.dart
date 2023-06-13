import '../../allpackages.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  var _selectedGender;
  var genderlist = ['Male', 'Female', 'I don\'t know'];

  var selectedindex = 0;

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
          'PERSONAL DETAILS',
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
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/doctor1.png'),
                                ),
                                SizedBox(width: 2.0.wp),
                                Container(
                                  height: 7.0.hp,
                                  width: 70.0.wp,
                                  decoration: BoxDecoration(
                                      color: screenbackground,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: ListTile(
                                    leading:
                                        Image.asset('assets/images/camera.png'),
                                    title: Text(
                                      'Change Profile Picture',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              letterSpacing: 0.2,
                                              fontSize: 14.00,
                                              color: Color(0xff18273B),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4.0.hp,
                            ),
                            Center(
                              child: Container(
                                height: 8.00.hp,
                                width: 90.00.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: screenbackground,
                                ),
                                child: Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10.0,
                                      ),
                                      child: Text(
                                        'Qualification',
                                        style: forminputstyle,
                                      ),
                                    ),
                                    Container(
                                      height: 8.0.hp,
                                      width: 70.0.wp,
                                      child: TextFormField(
                                        textInputAction: TextInputAction.next,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          //  label: Text('Search breed name'),
                                          hintText: 'Dr.John Wilston',
                                          hintStyle: fourhundredtweleve,
                                          contentPadding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.0.hp,
                            ),
                            Text(
                              'Gender',
                              style: sixhundredtweleve,
                            ),
                            Container(
                              height: 7.0.hp,
                              width: 100.0.wp,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 0.0,
                                          ),
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectedindex = index;
                                                  });
                                                },
                                                child: Container(
                                                  height: 5.0.hp,
                                                  width: 5.0.wp,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: appcolor)),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.0.wp,
                                              ),
                                              Text(
                                                genderlist[index],
                                                style: fourhundredtweleve,
                                              ),
                                              SizedBox(
                                                width: 3.0.wp,
                                              ),
                                            ],
                                          ),
                                        ),
                                        selectedindex == index
                                            ? Positioned(
                                                top: 1.5.hp,
                                                left: 1.0.wp,
                                                child: Container(
                                                  height: 2.0.hp,
                                                  width: 3.0.wp,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    gradient:
                                                        const LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Color(0xff0F52BA),
                                                        Color(0xff003586)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : Container()
                                      ],
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 4.0.hp,
                            ),
                            Center(
                              child: Container(
                                height: 8.00.hp,
                                width: 90.0.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: screenbackground,
                                ),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    prefixIcon:
                                        Image.asset('assets/images/phone.png'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    //  label: Text('Search breed name'),
                                    hintText: '+ 91 7849388728',
                                    hintStyle: categorytext,
                                    contentPadding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0.hp,
                            ),
                            Center(
                              child: ButtonIconButton(
                                  text: 'SAVE CHANGES',
                                  bordercolor: Colors.blue,
                                  press: () {}),
                            )
                          ]),
                    ),
                  ],
                ),
              ))),
    );
  }
}
