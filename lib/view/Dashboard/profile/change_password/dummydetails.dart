 

import '../../../allpackages.dart';

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
       
      ],
    );
  }
}
