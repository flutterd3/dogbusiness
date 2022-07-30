import 'package:dogbusiness/utility/color_themes.dart';
import 'package:dogbusiness/widgets/textformFeild.dart';
import 'package:flutter/material.dart';

import '../utility/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(color: activeCyanColor),
                  ),
                  TextFeildWidget(
                    title: 'Email',
                    hintText: 'Please enter your email',
                    controller: emailController,
                  ),
                  TextFeildWidget(
                    title: 'Password',
                    hintText: 'Please enter your password',
                    controller: emailController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
