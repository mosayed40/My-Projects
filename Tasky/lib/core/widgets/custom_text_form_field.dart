import 'package:tasky/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.textFieldController,
    this.suffixIcon,
    required this.obscureText,
    required this.validator,
  });
  final String label;
  final bool obscureText;
  final IconButton? suffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController textFieldController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textFieldController,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(fontSize: 16, color: AppColors.grayMedium),
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grayMedium),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
