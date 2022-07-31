import 'package:flutter/material.dart';
import 'package:simple_login_ui/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.isHide = false})
      : super(key: key);

  final String hint;
  final bool isHide;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: lightGray,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: darkGray,
          width: .5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextFormField(
          obscureText: isHide ? true : false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon:
                isHide ? const Icon(Icons.visibility_off_rounded) : null,
            hintStyle: const TextStyle(
              fontFamily: "Urbanist-Medium",
              color: darkGray,
            ),
          ),
        ),
      ),
    );
  }
}
