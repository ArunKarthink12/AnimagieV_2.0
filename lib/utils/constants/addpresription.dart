 

import '../../view/allpackages.dart';

class AddPrescription extends StatelessWidget {
  final String text;

  final TextStyle? style;
  final Color? bgcolor;
  final double? radiusvalue;
  
  final double? elevationvalue;
  final VoidCallback press;
  final Icon? icons;
  final Color? iconcolor;

  const AddPrescription({
    Key? key,
    required this.text,
    this.bgcolor,
 
    this.radiusvalue,
    this.elevationvalue,
    this.style,
    this.icons,
    this.iconcolor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.80,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff0F52BA), Color(0xff003586)],
              ),
              borderRadius: BorderRadius.circular(8)),
          child: ElevatedButton(
            onPressed: press,
            style: ElevatedButton.styleFrom(
                primary: buttoncolor,
                elevation: elevationvalue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: style),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: addbuttontextstyle,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15.0), child: icons),
              ],
            ),
          ),
        ),
        Positioned(
            right: 2.0.wp, child: Image.asset('assets/images/buttonimg.png'))
      ],
    );
  }
}
