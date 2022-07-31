import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/components/custom_social.dart';
import 'package:simple_login_ui/components/custom_textfield.dart';
import 'package:simple_login_ui/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String id = "signup_screen";

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Welcome back! Glad \nto see you, Again!",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Urbanist-Bold",
                  color: darkBlue,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const CustomTextField(
                hint: "Username",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: "Email",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: "Password",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: "Confirm Password",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                title: "Agree and Register",
                onpress: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                    ),
                  ),
                  Text(
                    "Or Login with",
                    style: TextStyle(
                      color: veryDarkGray,
                      fontFamily: "Urbanist-Semi-bold",
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomSocial(),
            ],
          ),
        ),
      ),
    );
  }
}
