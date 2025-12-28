import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) => OutlineInputBorder(
    borderSide: BorderSide(color: color ?? Colors.white),
    borderRadius: BorderRadius.circular(8),
  );
}
