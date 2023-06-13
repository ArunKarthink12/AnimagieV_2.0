import '../../../allpackages.dart';

class ChangePasswordInputFields extends StatefulWidget {
  const ChangePasswordInputFields({Key? key}) : super(key: key);

  @override
  State<ChangePasswordInputFields> createState() =>
      _ChangePasswordInputFieldsState();
}

class _ChangePasswordInputFieldsState extends State<ChangePasswordInputFields> {
  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  bool _isPinnewHidden = true;

  var passwordcontroller = TextEditingController();
  bool _isPinconfirmHidden = true;

  var confirmpasswordcontroller = TextEditingController();

  void _toggleconfirmPinView() {
    setState(() {
      _isPinconfirmHidden = !_isPinconfirmHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 6.0.hp,
            width: 90.0.wp,
            decoration: BoxDecoration(
                color: screenbackground,
                borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              obscureText: _isPinconfirmHidden,
              controller: confirmpasswordcontroller,
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
                  hintText: 'Old Password',
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
              controller: confirmpasswordcontroller,
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
              controller: confirmpasswordcontroller,
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
              Get.back();
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
