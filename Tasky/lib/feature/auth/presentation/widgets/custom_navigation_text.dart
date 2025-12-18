import 'package:flutter/material.dart';
import 'package:tasky/core/theme/colors.dart';

class CustomNavigationText extends StatelessWidget {
  const CustomNavigationText({
    super.key,
    required this.promptText,
    required this.actionText,
    required this.onPressed,
  });

  final String promptText;
  final String actionText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text(
          promptText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.grayMedium,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            actionText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.kGprimary,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
