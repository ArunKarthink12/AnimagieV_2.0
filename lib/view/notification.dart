import 'allpackages.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgcolor,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back),
            color: headingtext,
          ),
          title: Text(
            'NOTIFICATION',
            style: sixteeneighthundred000958,
          ),
          // actions: [
          //   Padding(
          //       padding: EdgeInsets.all(20.0),
          //       child: InkWell(
          //           onTap: () {},
          //           child: Image.asset('assets/images/notification.png'))),
          // ],
        ),
        body: Container(
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
                    child: Container(
                  height: 100.0.hp,
                  width: 100.0.wp,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 12.0.hp,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Blog Update',
                                        style: sixhundredfourteen,
                                      ),
                                      Text(
                                        '5 mins ago',
                                        style: forminputsmall,
                                      )
                                    ],
                                  ),
                                  Text(
                                    'An new blog has been posted',
                                    style: forminputstyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )))));
  }
}
