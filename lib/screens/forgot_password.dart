import "package:flutter/material.dart";
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/components/custom_textfield.dart';
import 'package:simple_login_ui/constants.dart';
import 'package:simple_login_ui/screens/otp_verify.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static const String id = "forgot_password_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: darkBlue,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Urbanist-Bold",
                      color: darkBlue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Don't worry! It occurs. Please enter the email\naddress linked with your account.",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Urbanist-Medium",
                      color: darkGray,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextField(
                  hint: "Enter your email",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: "Send Code",
                  onpress: () {
                    Navigator.pushNamed(context, OtpVerification.id);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Remember Password?",
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 15,
                    fontFamily: "Urbanist-Medium",
                  ),
                ),
                Text(
                  " Login",
                  style: TextStyle(
                    color: lightBlue,
                    fontSize: 15,
                    fontFamily: "Urbanist-Bold",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
