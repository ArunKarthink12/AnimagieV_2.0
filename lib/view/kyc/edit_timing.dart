 
import '../allpackages.dart';

class EditTiming extends StatefulWidget {
  const EditTiming({super.key});

  @override
  State<EditTiming> createState() => _EditTimingState();
}

class _EditTimingState extends State<EditTiming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bgcolor,
          elevation: 0,
          centerTitle: false,
          leadingWidth: 100,
          leading: Image.asset(
            'assets/images/appbarlogo.png',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 22.0, right: 20),
              child: Text(
                'SKIP',
                style: forminputstyle,
              ),
            )
          ],
        ),
        body: SafeArea(
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
                  fit: BoxFit.fill,
                ))),
            Positioned(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: Image.asset('assets/images/progress.png'),
                        ),
                        Positioned(
                            left: 2.0.wp,
                            child: Image.asset('assets/images/foot.png'))
                      ],
                    ),
                    SizedBox(
                      height: 1.0.hp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '0% Completed',
                          style: threehundredtweleve,
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 10.0.hp,
                          width: 35.0.wp,
                          // color: Colors.green.shade100,
                        ),
                        Positioned(
                            top: 1.0.hp,
                            child: Container(
                                height: 8.0.hp,
                                width: 20.0.wp,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: lightblue),
                                child: Center(
                                    child: Image.asset(
                                        'assets/images/time.png')))),
                        Positioned(
                            left: 12.0.wp,
                            child: Container(
                              height: 10.0.hp,
                              width: 20.0.wp,
                              child: Image.asset(
                                'assets/images/uploaddoctor.png',
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                    Text(
                      'Available times for an appointments..',
                      style: uploadpic,
                    ),
                    SizedBox(
                      height: 3.0.hp,
                    ),
                    DatePicker()
                  ])),
            ),
          ],
        ))));
  }
}
