import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:reside_ease/ten_digit_code_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OtpScreenState();
  }
}

class OtpScreenState extends State<OtpScreen> {
  // create a form key
  final _formKey = GlobalKey<FormState>();

  // create a text editing controller
  final _otpController = TextEditingController();

  // create a focus node
  final _otpFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _otpFocusNode.addListener(() {
      if (_otpFocusNode.hasFocus) {
        _otpController.clear();
      }
    });
  }

  @override
  void dispose() {
    _otpController.dispose();

    // dispose the focus nodes
    _otpFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // create
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 180,
                  ),
                  const Text(
                    'Confirm your number',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    'Enter the code sent to +91 9876543210',
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      borderWidth: 1,
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.blue.shade200,
                      activeColor:
                          Colors.black, // color when the field is active
                      // selectedColor:
                      //     Colors.black, // color when the field is selected
                      inactiveColor: Colors.black,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      print(value);
                      setState(
                        () {
                          _otpController.text = value;
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  const SizedBox(),
                  OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // navigate to the home screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TenDigitCodeScreen(),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
