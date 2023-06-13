import 'package:doctorapp/view/Dashboard/profile/support_create_balance.dart';

import '../../allpackages.dart';

class SupportCreate extends StatefulWidget {
  const SupportCreate({super.key});

  @override
  State<SupportCreate> createState() => _SupportState();
}

class _SupportState extends State<SupportCreate> {
  var newteredlist = [
    'Appointments',
    'Others',
  ];

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
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Query Related To',
                      style: sixhundredtweleve,
                    ),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Container(
                      height: 5.0.hp,
                      width: 100.0.wp,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index1) {
                            return Stack(
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          newteredindex = index1;
                                        });
                                      },
                                      child: Container(
                                        height: 5.0.hp,
                                        width: 5.0.wp,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                                Border.all(color: headingtext)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2.0.wp,
                                    ),
                                    Text(
                                      newteredlist[index1],
                                      style: fourhundredtweleve,
                                    ),
                                    SizedBox(
                                      width: 20.0.wp,
                                    ),
                                  ],
                                ),
                                newteredindex == index1
                                    ? Positioned(
                                        top: 1.0.hp,
                                        left: 0.5.hp,
                                        child: Container(
                                          height: 3.0.hp,
                                          width: 3.0.wp,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: const LinearGradient(
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
                      height: 2.0.hp,
                    ),
                    Text(
                      'Select your Query type',
                      style: sixhundredtweleve,
                    ),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Container(
                        height: 7.00.hp,
                        width: 95.00.wp,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: screenbackground,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0xFFECE9E9),
                            width: MediaQuery.of(context).size.height * 0.001,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectvalue,
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: forminputcolor,
                                    fontWeight: FontWeight.w500)),
                            hint: Text('Select your options',
                                style: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 10.00.sp,
                                        color: formhintcolor,
                                        fontWeight: FontWeight.w500))),
                            onChanged: (String? newValue) async {
                              setState(() {
                                selectvalue = newValue ?? '';
                              });
                            },
                            icon: Icon(Icons.arrow_drop_down_outlined),
                            items:
                                petfood.map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value.toString(),
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 0, right: 4),
                                    child: Text(value,
                                        style: GoogleFonts.jost(
                                            textStyle: TextStyle(
                                                fontSize: 10.00.sp,
                                                color: forminputcolor,
                                                fontWeight: FontWeight.w500)))),
                              );
                            }).toList(),
                          ),
                        )),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Text(
                      'Your Query',
                      style: sixhundredtweleve,
                    ),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Container(
                      height: 20.00.hp, width: 200.00.wp,
                      // padding: const EdgeInsets.only(
                      //   left: 20,
                      //   right: 20,
                      // ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: screenbackground),
                      child: TextFormField(
                        maxLines: 10,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                  color:
                                      const Color(0xffC6C6C6).withOpacity(0.5),
                                  width: 1),
                            ),
                            fillColor: const Color(0xffC6C6C6),
                            hintText: 'Type Here',
                            hintStyle: forminputstyle,
                            labelStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.email,
                                color: screenbackground, size: 20),
                            contentPadding:
                                const EdgeInsets.only(left: 20, top: 50),
                            border: const OutlineInputBorder(
                              gapPadding: 4,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 25.0.hp,
                    ),
                    Center(
                      child: ButtonIconButton(
                          text: 'SAVE CHANGES',
                          bordercolor: buttoncolor,
                          press: () {
                            Get.to(SupportCreateBalance());
                          }),
                    )
                  ]))),
    );
  }
}
