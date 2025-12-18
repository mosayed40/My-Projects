import 'package:tasky/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({super.key, required this.phoneController});
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      initialCountryCode: 'EG',
      dropdownIconPosition: IconPosition.trailing,
      dropdownIcon: const Icon(
        Icons.arrow_drop_down,
        //   color: AppColors.grayMedium,
      ),
      flagsButtonMargin: const EdgeInsets.only(left: 15),
      dropdownTextStyle: const TextStyle(
        color: Color(0xff7F7F7F),
        fontWeight: FontWeight.bold,
      ),
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        counterText: '',
        hintText: 'Phone Number',
        hintStyle: TextStyle(color: AppColors.grayMedium),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grayMedium),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 12,
        ),
        // errorText: phoneError,
      ),
    );
  }
}
