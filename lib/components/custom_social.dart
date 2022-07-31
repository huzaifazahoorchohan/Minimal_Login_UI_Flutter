import 'package:flutter/material.dart';
import 'package:simple_login_ui/constants.dart';

class CustomSocial extends StatelessWidget {
  const CustomSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 105,
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(
                  color: lightGray,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/facebook.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 105,
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(
                  color: lightGray,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/google.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 105,
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(
                  color: lightGray,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/apple-logo.png"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
