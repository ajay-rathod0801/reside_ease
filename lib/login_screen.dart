import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'package:reside_ease/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

// create a login screen state
class LoginScreenState extends State<LoginScreen> {
  // create a form key
  final _formKey = GlobalKey<FormState>();

  // create a text editing controller
  final _usernameController = TextEditingController();

  // create a focus node
  final _usernameFocusNode = FocusNode();

  final Dio _dio = Dio();

  @override
  void initState() {
    super.initState();

    _usernameFocusNode.addListener(() {
      if (_usernameFocusNode.hasFocus) {
        _usernameController.clear();
      }
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();

    // dispose the focus nodes
    _usernameFocusNode.dispose();

    super.dispose();
  }

  Future<void> _login() async{
    try{
      final response = await _dio.post(
        // To be replaced by actual API URL
        'https://api.resideease.com/api/v1/auth/login',
        data: {
          'username': _usernameController.text,
        },
      );
      print(response.data);
        } on DioException catch (e) {
      print(e.response!.data);
      
    }
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
                    'Login or Sign up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    focusNode: _usernameFocusNode,
                    decoration: const InputDecoration(
                      labelText: 'Enter Phone Number or Email ID',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a phone number or email ID';
                      }
                      // regex pattern for email
                      String emailPattern =
                          r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
                      RegExp emailRegex = RegExp(emailPattern);

                      // regex pattern for phone number (Indian format)
                      String phonePattern = r'^[6-9]\d{9}$';
                      RegExp phoneRegex = RegExp(phonePattern);

                      if (!emailRegex.hasMatch(value) &&
                          !phoneRegex.hasMatch(value)) {
                        return 'Please enter a valid phone number or email ID';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _login();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ),
                        );
                      }
                    },
                    style: OutlinedButton.styleFrom(
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/icons_google.png',
                      width: 24,
                      height: 24,
                    ),
                    label: const Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    label: const Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.apple_outlined,
                      color: Colors.black,
                    ),
                    label: const Text(
                      'Continue with Apple',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Already registered? Scan QR Code',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
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
