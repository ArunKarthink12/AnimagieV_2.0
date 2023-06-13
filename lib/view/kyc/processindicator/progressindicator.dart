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
      width: 83.0.wp,
      lineHeight: 8,
      percent: widget.percentage,
      // center: Text(
      //   "50.0%",
      //   style: new TextStyle(fontSize: 12.0),
      // ),
      // trailing: Icon(Icons.mood),
      barRadius: Radius.circular(6.0.sp),
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
      widgetIndicator: SizedBox(
        child: Image.asset('assets/images/foot.png'),
      ),
    );
  }
}
