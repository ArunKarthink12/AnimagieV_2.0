 

import '../../allpackages.dart';

class ProfessionalDetails extends StatefulWidget {
  const ProfessionalDetails({super.key});

  @override
  State<ProfessionalDetails> createState() => _ProfessionalDetailsState();
}

class _ProfessionalDetailsState extends State<ProfessionalDetails> {
  var _selectedGender;
  var genderlist = ['male', 'female', 'I dont know'];
  var newteredlist = ['no', 'yes', 'I dont know'];
  var selectedindex = 0;
  var newteredindex = 0;
  var foodindex = 0;
  var energyindex = 0;
  var bodytypeindex = 0;
  var petfood = [
    'Commercial food',
    'Fresh or uncooked food',
    'Home & Cooked food',
    'Doctor_approch food'
  ];
  var energylevel = ['Energetic', 'Moderately active', 'Inactive'];
  var bodytype = [
    'Lean and Toned',
    'Obese',
    'Athetic and Strong',
    'Carrying some extra weight'
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
          'PROFESSIONAL DETAILS',
          style: sixteeneighthundred000958,
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/doctor1.png'),
                              ),
                              Container(
                                height: 7.0.hp,
                                width: 70.0.wp,
                                decoration: BoxDecoration(
                                    color: screenbackground,
                                    borderRadius: BorderRadius.circular(5)),
                                child: ListTile(
                                  leading: Icon(Icons.camera_alt_outlined),
                                  title: Text('Change Profile Picture',
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              letterSpacing: 0.2,
                                              fontSize: 14.00,
                                              color: Color(0xff18273B),
                                              fontWeight: FontWeight.w500))),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.0.hp,
                          ),
                          Container(
                            height: 8.00.hp,
                            width: 200.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: screenbackground,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0, top: 5),
                                  child: Text(
                                    'User Name',
                                    style: forminputstyle,
                                  ),
                                ),
                                Container(
                                  height: 3.0.hp,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
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
                                      hintText: 'Masters',
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
                          SizedBox(
                            height: 2.0.hp,
                          ),
                          Container(
                            height: 8.00.hp,
                            width: 200.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: screenbackground,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0, top: 5),
                                  child: Text(
                                    'Masters in',
                                    style: forminputstyle,
                                  ),
                                ),
                                Container(
                                  height: 3.0.hp,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
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
                                      hintText: 'Veterinary Science',
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
                          SizedBox(
                            height: 2.0.hp,
                          ),
                          Container(
                            height: 8.00.hp,
                            width: 200.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: screenbackground,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0, top: 5),
                                  child: Text(
                                    'Registration number',
                                    style: forminputstyle,
                                  ),
                                ),
                                Container(
                                  height: 3.0.hp,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
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
                                      hintText: '127939ujhh',
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
                          SizedBox(
                            height: 2.0.hp,
                          ),
                          Container(
                            height: 8.00.hp,
                            width: 200.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: screenbackground,
                            ),
                            child: Container(
                              height: 3.0.hp,
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
                                  hintText: '+91 9872629209',
                                  hintStyle: fourhundredtweleve,
                                  contentPadding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.0.hp,
                          ),
                          Container(
                            height: 8.00.hp,
                            width: 200.00.wp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: screenbackground,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0, top: 5),
                                  child: Text(
                                    'Years in Medical Practice',
                                    style: forminputstyle,
                                  ),
                                ),
                                Container(
                                  height: 3.0.hp,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
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
                                      hintText: '7',
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
                          SizedBox(
                            height: 10.0.hp,
                          ),
                          Center(
                            child: ButtonIconButton(
                                text: 'SAVE CHANGES',
                                bordercolor: Colors.blue,
                                press: () {}),
                          )
                        ])),
              ),
            ],
          )),
    );
  }
}
