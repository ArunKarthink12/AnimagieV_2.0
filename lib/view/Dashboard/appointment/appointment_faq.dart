import '../../allpackages.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  var selectedindex;
  bool? indexselected;
  final List quotes = [
    {
      "answer": [
        "Incrased discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "General symptoms",
    },
    {
      "answer": [
        "Incrased discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "Eye Symptoms",
    },
    {
      "answer": [
        "Incrased discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "Musculoskeletal Symptoms",
    },
    {
      "answer": [
        "Incresed discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "Weight & Body condition \n symptoms",
    },
    {
      "answer": [
        "Incrased discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "Gastrointestinal Symptoms",
    },
    {
      "answer": [
        "Incrased discharge from the eye",
        "Redness of the eye",
        "Complete whiteness of the eye",
        "Swelling of the eye"
      ],
      "question": "Nervous System Symptoms",
    },
  ];
  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      textColor: appcolor,
      iconColor: appcolor,
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.jpg'),
      ),
      title: Text(
        item['question'],
      ),
      children: <Widget>[
        ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 17.0.wp, vertical: 0.0.hp),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text(
              //   item['answer'][0],
              // ),
              // Text(
              //   item['answer'][1],
              // ),
              // Text(
              //   item['answer'][2],
              // ),
              // Text(
              //   item['answer'][3],
              // ),

              Container(
                height: 15.0.hp,
                width: 100.0.wp,
                child: ListView.builder(
                    itemCount: quotes[0]['answer'].length,
                    itemBuilder: (context, index) {
                      return Text(item['answer'][index].toString());
                    }),
              ),
              Divider()
            ],
          ),
        )
      ],
    );
  }

  Widget _buildExpandableTile1(item) {
    return ExpansionTile(
      textColor: appcolor,
      iconColor: appcolor,
      title: Text(
        item['question'],
      ),
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 3.0.wp,
            ),
            Container(
                height: 4.0.hp,
                width: 35.0.wp,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Reduced activity level',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.close,
                      size: 12,
                    )
                  ],
                )),
            SizedBox(
              width: 2.0.wp,
            ),
            Container(
                height: 4.0.hp,
                width: 35.0.wp,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Circling',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      Icons.close,
                      size: 12,
                    )
                  ],
                )),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'FAQS',
            style: heading,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: quotes.length,
            itemBuilder: (BuildContext context, int index) {
              return index == 0
                  ? _buildExpandableTile1(quotes[index])
                  : _buildExpandableTile(quotes[index]);
            },
          ),
        ));
  }
}
