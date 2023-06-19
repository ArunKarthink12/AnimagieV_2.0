// // ll Source code:

// import 'package:doctorapp/utils/constants/responsive.dart';
// import 'package:flutter/material.dart';

// class PopUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Center(
//           child: AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(24),
//           ),
//         ),
//         backgroundColor: Colors.black87,
//         titlePadding: EdgeInsets.all(0),
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Align(
//               alignment: Alignment.topRight,
//               child: IconButton(
//                 icon: Icon(
//                   Icons.close,
//                   color: Colors.red,
//                   size: 25,
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//             Center(
//               child: SizedBox(child: Image.asset(""),),
//               // child: Text('sd',
//               //     style: TextStyle(
//               //       fontFamily: 'TTNorms',
//               //       fontWeight: FontWeight.bold,
//               //       wordSpacing: 0,
//               //       letterSpacing: 0,
//               //       fontSize: 25,
//               //       color: Colors.yellow,
//               //     )),
//             ),
//           ],
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'Confirmation',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'TTNorms',
//                 fontWeight: FontWeight.w400,
//                 wordSpacing: 0,
//                 letterSpacing: 0,
//                 fontSize: 15,
//                 color: Colors.yellow,
//               ),
//             ),
//             Text(
//               'Your Profile has been created successfully',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontFamily: 'TTNorms',
//                 fontWeight: FontWeight.w400,
//                 wordSpacing: 0,
//                 letterSpacing: 0,
//                 fontSize: 15,
//                 color: Colors.yellow,
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10.0),
//             child: Center(
//               child: GestureDetector(
//                 onTap: () {
//                   // widget.onTapLeftButton?.call();
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 80.0.wp,
//                   decoration: BoxDecoration(
//                     // border: Border.all(color: Colors.yellow, width: 2.0),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10.0.sp),
//                     ),
//                     color: Colors.blue,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Okay',
//                       style: TextStyle(
//                         fontFamily: 'TTNorms',
//                         fontWeight: FontWeight.bold,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(
//               bottom: 10.0,
//               left: 10,
//             ),
//             child: Center(
//               child: GestureDetector(
//                 onTap: () {
//                   // widget.onTapRightButton?.call();
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(15),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "",
//                       // widget.rightButton!.toUpperCase().toString(),
//                       style: TextStyle(
//                         fontFamily: 'TTNorms',
//                         fontWeight: FontWeight.bold,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                         fontSize: 15,
//                         color: Colors.blue,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       )
//           //  ElevatedButton(
//           //   onPressed: () => Popup(
//           //     title: 'Oops!',
//           //     message: "Looks like there has been a mistake please check later!",
//           //     leftButton: 'Cancel',
//           //     rightButton: 'OK',
//           //     onTapLeftButton: () {},
//           //     onTapRightButton: () {},
//           //   ).show(context),
//           //   child: Text('SHOW POPUP'),
//           // ),
//           ),
//     );
//   }
// }

// class Popup {
//   final String? title;
//   final String? message;
//   final String? rightButton;
//   final VoidCallback? onTapRightButton;
//   final String? leftButton;
//   final VoidCallback? onTapLeftButton;

//   Popup({
//     this.title,
//     this.message,
//     this.rightButton,
//     this.onTapRightButton,
//     this.leftButton,
//     this.onTapLeftButton,
//   });

//   show(BuildContext context) {
//     return showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return _PopupCall(
//             title: title,
//             message: message,
//             leftButton: leftButton,
//             rightButton: rightButton,
//             onTapLeftButton: onTapLeftButton,
//             onTapRightButton: onTapRightButton);
//       },
//     );
//   }
// }

// class _PopupCall extends StatefulWidget {
//   final String? title;
//   final String? message;
//   final String? rightButton;
//   final VoidCallback? onTapRightButton;
//   final String? leftButton;
//   final VoidCallback? onTapLeftButton;

//   const _PopupCall(
//       {Key? key,
//       this.title,
//       this.message,
//       this.rightButton,
//       this.onTapRightButton,
//       this.leftButton,
//       this.onTapLeftButton})
//       : super(key: key);
//   @override
//   _PopupCallState createState() => _PopupCallState();
// }

// class _PopupCallState extends State<_PopupCall> {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(
//           Radius.circular(24),
//         ),
//       ),
//       backgroundColor: Colors.black87,
//       titlePadding: EdgeInsets.all(0),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Align(
//             alignment: Alignment.topRight,
//             child: IconButton(
//               icon: Icon(
//                 Icons.close,
//                 color: Colors.red,
//                 size: 25,
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//           Center(
//             child: Text(widget.title.toString(),
//                 style: TextStyle(
//                   fontFamily: 'TTNorms',
//                   fontWeight: FontWeight.bold,
//                   wordSpacing: 0,
//                   letterSpacing: 0,
//                   fontSize: 25,
//                   color: Colors.yellow,
//                 )),
//           ),
//         ],
//       ),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             widget.message.toString(),
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'TTNorms',
//               fontWeight: FontWeight.w400,
//               wordSpacing: 0,
//               letterSpacing: 0,
//               fontSize: 15,
//               color: Colors.yellow,
//             ),
//           ),
//         ],
//       ),
//       actions: [
//         if (widget.leftButton != null)
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10.0),
//             child: Center(
//               child: GestureDetector(
//                 onTap: () {
//                   widget.onTapLeftButton?.call();
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   height: 40,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.yellow, width: 2.0),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(25),
//                     ),
//                     color: Colors.blue,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Okay',
//                       style: TextStyle(
//                         fontFamily: 'TTNorms',
//                         fontWeight: FontWeight.bold,
//                         wordSpacing: 0,
//                         letterSpacing: 0,
//                         fontSize: 15,
//                         color: Colors.yellow,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         Padding(
//           padding: EdgeInsets.only(
//             bottom: 10.0,
//             left: 10,
//           ),
//           child: Center(
//             child: GestureDetector(
//               onTap: () {
//                 widget.onTapRightButton?.call();
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 height: 40,
//                 width: 80,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     widget.rightButton!.toUpperCase().toString(),
//                     style: TextStyle(
//                       fontFamily: 'TTNorms',
//                       fontWeight: FontWeight.bold,
//                       wordSpacing: 0,
//                       letterSpacing: 0,
//                       fontSize: 15,
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
