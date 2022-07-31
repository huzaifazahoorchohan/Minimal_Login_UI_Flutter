import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/constants.dart';
import 'package:simple_login_ui/screens/signin_screen.dart';
import 'package:simple_login_ui/screens/signup.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  static const String id = "choose_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                title: "Login",
                onpress: () {
                  Navigator.pushNamed(context, SignInScreen.id);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                title: "Register",
                btn2: false,
                onpress: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
              ),
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Continue as a guest",
                style: TextStyle(
                  color: lightBlue,
                  fontFamily: "Urbanist-Bold",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
