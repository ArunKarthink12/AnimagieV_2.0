 

import '../allpackages.dart';

class EditTimingProfile extends StatefulWidget {
  const EditTimingProfile({super.key});

  @override
  State<EditTimingProfile> createState() => _EditTimingProfileState();
}

class _EditTimingProfileState extends State<EditTimingProfile> {
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
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [DatePicker()])),
            ),
          ],
        ))));
  }
}
