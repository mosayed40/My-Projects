import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    required this.controller,
  });
  final String hintText;
  final int maxLines;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
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
