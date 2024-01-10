import 'package:flutter/material.dart';

class TenDigitCodeScreen extends StatefulWidget {
  const TenDigitCodeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TenDigitCodeScreenState();
  }
}

class TenDigitCodeScreenState extends State<TenDigitCodeScreen> {
  // create a form key
  final _formKey = GlobalKey<FormState>();

  // create a text editing controller
  final _tenDigitController = TextEditingController();

  // create a focus node
  final _tenDigitFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _tenDigitFocusNode.addListener(() {
      if (_tenDigitFocusNode.hasFocus) {
        _tenDigitController.clear();
      }
    });
  }

  @override
  void dispose() {
    _tenDigitController.dispose();

    // dispose the focus nodes
    _tenDigitFocusNode.dispose();

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
                    controller: _tenDigitController,
                    focusNode: _tenDigitFocusNode,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          'Enter the security code shared by the administrator', //this phone number should be the one entered in the previous screen
                      labelStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: 'Enter 10 Digit Code',
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const HomeScreen(),
                        //   ),
                        // );
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
