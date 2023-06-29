// import 'dart:developer';

import 'package:doctorapp/view/Dashboard/profile/personaldetails/controller/direct_to_home.dart';

import '../../allpackages.dart';
import '../home_screen/otherblog.dart';
import '../home_screen/your_blog.dart';
import 'createblog/createblog.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key, this.index});
  final int? index;

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  YourBlogController yourBlogController = Get.put(YourBlogController());
  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  fetchdata() {
    Future.delayed(Duration.zero, () async {
      await yourBlogController.yourController();
    });
  }

  GoHome goHome = Get.put(GoHome());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              goHome.currentIndex.value = 0;

              setState(() {});
            },
            color: headingtext,
          ),
          title: Text(
            'BLOG',
            style: sixteeneighthundred000958,
          ),
        ),
        body: Container(
          height: 100.0.hp,
          width: 100.0.wp,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10,
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
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: appcolor,
                                  borderRadius: BorderRadius.circular(10.0.sp)),
                              height: 20.0.hp,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.0.wp,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment:
                                      // CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '''Write a blog offering pet owners useful insights for improved furry friend care.
                                  ''',
                                          maxLines: 4,
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 10.0.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 1.0.hp,
                                        ),
                                        Container(
                                          height: 3.0.hp,
                                          // width: 15.0.wp,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7.0.sp),
                                            color: Colors.white,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "post your blog",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 8.0.sp),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      child: Image.asset(
                                          'assets/images/bannerinside.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0.wp,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(const YourBlogEdit());
                                print("print");
                              },
                              child: SizedBox(
                                height: 20.0.hp,
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset('assets/images/paw.png'),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TabBar(
                            onTap: (index) {
                              setState(() {});
                            },
                            isScrollable: true,
                            unselectedLabelColor: Colors.grey,
                            indicator: const BoxDecoration(),
                            labelColor: const Color(0xff0F52BA),
                            dividerColor: const Color(0xff0F52BA),
                            labelStyle: blog,
                            unselectedLabelStyle: forminputstyle,

                            // ignore: prefer_const_literals_to_create_immutables
                            tabs: [
                              const Tab(
                                child: Text(
                                  'Others Blogs',
                                ),
                              ),
                              const Tab(
                                child: Text(
                                  'Your Blog',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1000.0.hp,
                          width: 1000.0.wp,
                          child: TabBarView(children: [
                            // Obx(() {
                            //   // print(
                            //   //     'othercontroller------------${otherBlogController.listdata.length}');
                            //   if (yourBlogController.isLoding.isTrue) {
                            //     return const Center(
                            //         child: CircularProgressIndicator());
                            //   } else if (yourBlogController.listdata.isEmpty) {
                            //     return const Center(
                            //       child: Text('No Data Found'),
                            //     );
                            //   } else {
                            //     return
                            OtherBlog(),
                            // }
                            // }),
                            YourBlog(),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //
      ),
    );
  }
}
