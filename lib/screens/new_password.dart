import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/components/custom_textfield.dart';
import 'package:simple_login_ui/constants.dart';
import 'package:simple_login_ui/screens/password_changed.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  static const String id = "new_password_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create new password",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Urbanist-Bold",
                color: darkBlue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your new password must be unique from those previously used.",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Urbanist-Medium",
                color: darkGray,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomTextField(
              hint: "New Password",
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              hint: "Confirm New Password",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              title: "Reset Password",
              onpress: () {
                Navigator.pushNamed(context, PasswordChangedScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
