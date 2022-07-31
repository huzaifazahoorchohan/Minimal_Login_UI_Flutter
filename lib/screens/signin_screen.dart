import 'package:flutter/material.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/components/custom_social.dart';
import 'package:simple_login_ui/components/custom_textfield.dart';
import 'package:simple_login_ui/constants.dart';
import 'package:simple_login_ui/screens/forgot_password.dart';
import 'package:simple_login_ui/screens/signup.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const String id = "sign_in_screen";

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
                hint: "Enter your email",
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: "Enter your password",
                isHide: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPasswordScreen.id);
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: veryDarkGray,
                      fontFamily: "Urbanist-Semi-bold",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              CustomButton(
                title: "Login",
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
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: darkBlue,
                      fontSize: 15,
                      fontFamily: "Urbanist-Medium",
                    ),
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    }),
                    child: const Text(
                      " Register Now",
                      style: TextStyle(
                        color: lightBlue,
                        fontSize: 15,
                        fontFamily: "Urbanist-Bold",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
