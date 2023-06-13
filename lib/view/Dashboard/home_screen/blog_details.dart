import '../../allpackages.dart';

class BlogDetails extends StatefulWidget {
  const BlogDetails({super.key, this.index});
  final int? index;

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  var selectindex = 0;
  List weight = ['250 g', '500 g', '1 kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45.0.hp,
                        width: 100.0.wp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/cutedog.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: 25.0.hp, left: 5.0.wp),
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      Color.fromRGBO(255, 255, 255, 0.8),
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
                              'Jan 4, 2022',
                              style: forminputstyle,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              'How To Tell If Your Dog Is At A Healthy Weight',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      letterSpacing: 0.2,
                                      fontSize: 20.00,
                                      color: Color(0xff2C2C2C),
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w700)),
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 5.0.hp,
                                  width: 20.0.wp,
                                  decoration: BoxDecoration(
                                      color: Color(0xffDBDBDB),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      'Health',
                                      style: fourhundredtweleve,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Color(0xffFF6660),
                                      child: Icon(
                                        Icons.favorite,
                                        size: 15,
                                        color: screenbackground,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.0.wp,
                                    ),
                                    Text(
                                      '100',
                                      style: forminputstyle,
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                            SizedBox(
                              height: 2.0.hp,
                            ),
                            Text(
                              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                              style: fourhundredtweleve,
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
