import 'package:flutter/material.dart';
import 'package:simple_login_ui/screens/choose_screen.dart';
import 'package:simple_login_ui/screens/forgot_password.dart';
import 'package:simple_login_ui/screens/new_password.dart';
import 'package:simple_login_ui/screens/otp_verify.dart';
import 'package:simple_login_ui/screens/password_changed.dart';
import 'package:simple_login_ui/screens/signin_screen.dart';
import 'package:simple_login_ui/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ChooseScreen.id,
      routes: {
        ChooseScreen.id: (context) => const ChooseScreen(),
        SignInScreen.id: (context) => const SignInScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        OtpVerification.id: (context) => const OtpVerification(),
        NewPasswordScreen.id: (context) => const NewPasswordScreen(),
        PasswordChangedScreen.id: (context) => const PasswordChangedScreen(),
      },
    );
  }
}

///
