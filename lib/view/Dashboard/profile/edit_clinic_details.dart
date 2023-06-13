import '../../allpackages.dart';

class EditClinicDetails extends StatefulWidget {
  const EditClinicDetails({super.key});

  @override
  State<EditClinicDetails> createState() => _EditClinicDetailsState();
}

class _EditClinicDetailsState extends State<EditClinicDetails> {
  var selectindex = 0;
  List blogname = ['Dog Blog', 'Health', 'Funny Friend'];
  var selectvalue;
  var dummylist;

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
          'EDIT CLINIC DETAILS',
          style: sixteeneighthundred000958,
        ),
        actions: [
          const Padding(
              padding: EdgeInsets.only(top: 22.0, right: 20),
              child: Icon(Icons.notifications_outlined))
        ],
      ),
      body: SingleChildScrollView(
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
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 8.00.hp,
                          width: 200.00.wp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: screenbackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              minLeadingWidth: 5.0.wp,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              leading: Image.asset(
                                'assets/images/clinic.png',
                                color: Colors.black,
                              ),
                              title: Text(
                                'Clinic Name',
                                style: forminputsmall,
                              ),
                              subtitle: Container(
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    //  label: Text('Search breed name'),

                                    hintText: 'John Clinic',
                                    hintStyle: fourhundredtweleve,
                                    contentPadding: const EdgeInsets.only(),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Container(
                          height: 12.00.hp,
                          width: 100.00.wp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: screenbackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              minLeadingWidth: 5.0.wp,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              leading: Image.asset(
                                'assets/images/location.png',
                                color: Colors.black,
                              ),
                              title: Text(
                                'Clinic Address',
                                style: forminputsmall,
                              ),
                              subtitle: TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  //  label: Text('Search breed name'),

                                  hintText:
                                      '456 Pradhan Thiru, No. 789, Perunagar,\nTamil Nadu 600028',
                                  hintStyle: fourhundredtweleve,
                                  contentPadding: const EdgeInsets.only(),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Text(
                        'Upload your Clinic Photo',
                        style: uploadpic,
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 30.0.hp,
                          width: 100.0.wp,
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 30.0.hp,
                                width: 80.0.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xffDDDADA)),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/editclinic.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 6.0.wp,
                                top: 4.0.hp,
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xffDDE7F5),
                                  radius: 14,
                                  child: Icon(
                                    Icons.close,
                                    size: 15,
                                    color: headingtext,
                                  ),
                                ))
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Text(
                        'Upload your Signature',
                        style: uploadpic,
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          height: 30.0.hp,
                          width: 100.0.wp,
                          child: Stack(children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 30.0.hp,
                                width: 80.0.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xffDDDADA)),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/editsign.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 6.0.wp,
                                top: 4.0.hp,
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xffDDE7F5),
                                  radius: 14,
                                  child: Icon(
                                    Icons.close,
                                    size: 15,
                                    color: headingtext,
                                  ),
                                ))
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 3.0.hp,
                      ),
                      Center(
                        child: ButtonIconButton(
                            text: 'SAVE CHANGES',
                            bordercolor: Colors.blue,
                            press: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
