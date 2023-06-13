import '../../allpackages.dart';
 

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: bgcolor,
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
            'ADD DETAILS',
            style: sixteeneighthundred000958,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20,
                top: 10,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10.0.hp,
                      width: 100.0.wp,
                      child: ListTile(
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
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                    Text(
                      'Add Prescription',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Container(
                      color: Colors.white,
                      height: 25.00.hp,
                      width: 100.00.wp,
                      child: TextFormField(
                        maxLines: 20,
                        style: forminputstyle,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 1),
                            ),
                            hintText: 'Type Here',
                            contentPadding:
                                const EdgeInsets.only(left: 10, top: 20),
                            hintStyle: formhintstyle,
                            border: const OutlineInputBorder(
                              gapPadding: 4,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                    Text(
                      'Notes (If Any)',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 2.0.hp,
                    ),
                    Container(
                      color: Colors.white,
                      height: 20.00.hp,
                      width: 100.00.wp,
                      child: TextFormField(
                        maxLines: 10,
                        style: forminputstyle,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: const BorderSide(
                                  color: screenbackground, width: 1),
                            ),
                            hintText: 'Type Here',
                            contentPadding:
                                const EdgeInsets.only(left: 10, top: 20),
                            hintStyle: formhintstyle,
                            border: const OutlineInputBorder(
                              gapPadding: 4,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Image.asset(
                      'assets/images/sign.png',
                      height: 7.0.hp,
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                    Text(
                      'Signature',
                      style: fourteensixhundred2B2E35,
                    ),
                    SizedBox(
                      height: 5.0.hp,
                    ),
                    Center(
                      child: ButtonIconButton(
                        press: () {
                          // loginController.loginController(context: context);
                          Get.back();
                          //Get.to(const HomeScreen());
                        },
                        bordercolor: buttoncolor,
                        text: 'DONE',
                      ),
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
