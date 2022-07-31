import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/constants.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({Key? key}) : super(key: key);

  static const String id = "password_changed_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/greentick.png"),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Password Changed!",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Urbanist-Bold",
                    color: darkBlue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Your password has been changed \nsuccessfully.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Urbanist-Medium",
                    color: darkGray,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: "Back to Login",
                  onpress: () {
                    int count = 0;
                    Navigator.popUntil(
                      context,
                      (route) {
                        return count++ == 3;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
