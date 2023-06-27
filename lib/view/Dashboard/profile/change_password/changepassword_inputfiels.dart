import '../../../allpackages.dart';

class ChangePasswordInputFields extends StatefulWidget {
  const ChangePasswordInputFields({Key? key}) : super(key: key);

  @override
  State<ChangePasswordInputFields> createState() =>
      _ChangePasswordInputFieldsState();
}

class _ChangePasswordInputFieldsState extends State<ChangePasswordInputFields> {
  ChangePaswordController changePaswordController =
      Get.put(ChangePaswordController());
  LoginController loginController = Get.put(LoginController());
  @override
  void initState() {
    // TODO: implement initState
    print(loginController.email.text);
    changePaswordController.password.text = '';
    changePaswordController.password_confirmation.text = '';
    super.initState();
  }

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  bool _isPinnewHidden = true;

  // var passwordcontroller = TextEditingController();
  bool _isPinconfirmHidden = true;

  // var confirmpasswordcontroller = TextEditingController();

  void _toggleconfirmPinView() {
    setState(() {
      _isPinconfirmHidden = !_isPinconfirmHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Center(
        // child: Container(
        //   height: 6.0.hp,
        //   width: 90.0.wp,
        //   decoration: BoxDecoration(
        //       color: screenbackground,
        //       borderRadius: BorderRadius.circular(5)),
        //   child: TextFormField(
        //     obscureText: _isPinconfirmHidden,
        //     controller: confirmpasswordcontroller,
        //     style: forminputstyle,
        //     decoration: InputDecoration(
        //         focusedBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(5.0),
        //           borderSide:
        //               const BorderSide(color: screenbackground, width: 0.5),
        //         ),
        //         enabledBorder: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(5.0),
        //           borderSide:
        //               const BorderSide(color: screenbackground, width: 1),
        //         ),
        //         hintText: 'Old Password',
        //         contentPadding: const EdgeInsets.all(0),
        //         suffixIcon: InkWell(
        //           onTap: _toggleconfirmPinView,
        //           child: Icon(
        //             _isPinconfirmHidden
        //                 ? Icons.visibility_outlined
        //                 : Icons.visibility_off_outlined,
        //             size: MediaQuery.of(context).size.height * 0.03,
        //             color: Colors.black,
        //           ),
        //         ),
        //         prefixIcon: Image.asset('assets/images/pass.png'),
        //         hintStyle: forminputstyle,
        //         border: const OutlineInputBorder(
        //           gapPadding: 4,
        //         )),
        //   ),
        // ),
        // ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Center(
          child: Container(
            height: 6.0.hp,
            width: 90.0.wp,
            decoration: BoxDecoration(
                color: screenbackground,
                borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              obscureText: _isPinconfirmHidden,
              controller: changePaswordController.password,
              style: forminputstyle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 1),
                  ),
                  hintText: 'New Password',
                  contentPadding: const EdgeInsets.all(0),
                  suffixIcon: InkWell(
                    onTap: _toggleconfirmPinView,
                    child: Icon(
                      _isPinconfirmHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: MediaQuery.of(context).size.height * 0.03,
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: Image.asset('assets/images/pass.png'),
                  hintStyle: forminputstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Center(
          child: Container(
            height: 6.0.hp,
            width: 90.0.wp,
            decoration: BoxDecoration(
                color: screenbackground,
                borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              obscureText: _isPinconfirmHidden,
              controller: changePaswordController.password_confirmation,
              style: forminputstyle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide:
                        const BorderSide(color: screenbackground, width: 1),
                  ),
                  hintText: 'New Confirm Password',
                  contentPadding: const EdgeInsets.all(0),
                  suffixIcon: InkWell(
                    onTap: _toggleconfirmPinView,
                    child: Icon(
                      _isPinconfirmHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: MediaQuery.of(context).size.height * 0.03,
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: Image.asset('assets/images/pass.png'),
                  hintStyle: forminputstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 40.00.hp,
        ),
        Center(
          child: ButtonIconButton(
            press: () {
              if (changePaswordController.password.text.isEmpty ||
                  changePaswordController.password_confirmation.text.isEmpty) {
                Fluttertoast.showToast(msg: "Fields Shouldn't be empty");
              } else if (changePaswordController
                          .password_confirmation.text.length <
                      7 ||
                  changePaswordController.password.text.length < 7) {
                Fluttertoast.showToast(
                    msg: "Password Should be greater then 7 Digits");
              } else {
                Future.delayed(Duration.zero, () async {
                  await changePaswordController.changePasswordController(
                      context: context, email: loginController.email.text);
                });
              }
              // loginController.loginController(context: context);
            },
            bordercolor: buttoncolor,
            text: 'SAVE CHANGES',
          ),
        ),
      ],
    );
  }
}
