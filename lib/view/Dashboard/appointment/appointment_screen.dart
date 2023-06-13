 

import '../../allpackages.dart';
import '../home_screen/otherblog.dart';
import '../home_screen/your_blog.dart';
 

class Appointment extends StatefulWidget {
  const Appointment({super.key, this.index});
  final int? index;

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
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
                        Image.asset('assets/images/blogbannerimage.png'),
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
                          child: const TabBarView(children: [
                              OtherBlog(),
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
