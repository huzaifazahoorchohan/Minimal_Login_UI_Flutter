import 'package:flutter/material.dart';
import 'package:simple_login_ui/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onpress,
    required this.title,
    this.btn2 = true,
  }) : super(key: key);

  final String title;
  final bool btn2;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: btn2 ? darkBlue : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: btn2
            ? null
            : Border.all(
                color: darkBlue,
                width: 1,
              ),
      ),
      child: TextButton(
        onPressed: onpress,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: btn2 ? Colors.white : darkBlue,
            fontFamily: "Urbanist-SemiBold",
          ),
        ),
      ),
    );
  }
}
