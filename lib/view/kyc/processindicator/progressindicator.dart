import 'package:doctorapp/utils/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressIndicatorWithIcon extends StatefulWidget {
  var percentage;
  ProgressIndicatorWithIcon({super.key, this.percentage});

  @override
  State<ProgressIndicatorWithIcon> createState() =>
      _ProgressIndicatorWithIconState();
}

class _ProgressIndicatorWithIconState extends State<ProgressIndicatorWithIcon> {
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      alignment: MainAxisAlignment.spaceAround,
      width: 95.0.wp,
      lineHeight: 8,
      percent: widget.percentage,
      barRadius: Radius.circular(6.0.sp),
      backgroundColor: Colors.grey,
      progressColor: buttoncolor,
      widgetIndicator: SizedBox(
        height: 2.0.hp,
        width: 5.5.wp,
        child: Image.asset(
          'assets/images/foot.png',
          fit: BoxFit.cover,
        ),
      ),
      //  Container(
      //   height: 5.0.hp,
      //   width: 10.0.wp,

      //   decoration: BoxDecoration(
      //       // color: Colors.black,
      //       image:
      //           DecorationImage(image: AssetImage("assets/images/paw 3.png"))),
      //   // child: Image.asset(
      //   //   'assets/images/paw 3.png',
      //   //   fit: BoxFit.cover,
      //   // ),
      // ),
    );
  }
}
