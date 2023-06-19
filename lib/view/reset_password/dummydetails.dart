import '../allpackages.dart';

class DummyDetails extends StatefulWidget {
  const DummyDetails({Key? key}) : super(key: key);

  @override
  _DummyDetailsState createState() => _DummyDetailsState();
}

class _DummyDetailsState extends State<DummyDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Center(
          child: SizedBox(
              height: 25.0.hp,
              width: 25.0.hp,
              child: Image.asset('assets/images/A_logo.png')),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          'RESET PASSWORD',
          textAlign: TextAlign.center,
          style: toptitleStylebold,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '''Set the new password for your account so you can login and access all the features.''',
                    textAlign: TextAlign.justify,
                    style: welcome,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
