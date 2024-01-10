import 'package:flutter/material.dart';
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
                    height: 50.0,
                  ),
                  TextFormField(
                    controller: _otpController,
                    focusNode: _otpFocusNode,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          'Enter the code sent to +91', //this phone number should be the one entered in the previous screen
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: 'Enter OTP',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter OTP';
                      }
                      if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Please enter numbers only';
                      }
                      return null;
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
