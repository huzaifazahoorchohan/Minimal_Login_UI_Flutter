import "package:flutter/material.dart";
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:simple_login_ui/components/custom_button.dart';
import 'package:simple_login_ui/constants.dart';
import 'package:simple_login_ui/screens/new_password.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  static const String id = "otp_verify_screen";

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
                    "OTP Verification",
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
                    "Enter the verification code we just sent on your \nemail address.",
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

                /// OTP VERIFICATION BOXES

                PinCodeTextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  obscuringCharacter: "#",
                  appContext: context,
                  length: 4,
                  onChanged: (value) {},
                  pinTheme: PinTheme(
                    fieldWidth: 70,
                    fieldHeight: 65,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    selectedColor: darkGray,
                    inactiveColor: darkGray,
                    activeColor: lightBlue,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: "Verify",
                  onpress: () {
                    Navigator.pushNamed(context, NewPasswordScreen.id);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Did'nt recived code?",
                  style: TextStyle(
                    color: darkBlue,
                    fontSize: 15,
                    fontFamily: "Urbanist-Medium",
                  ),
                ),
                Text(
                  " Resend",
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
