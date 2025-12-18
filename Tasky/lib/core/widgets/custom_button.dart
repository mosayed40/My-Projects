import 'package:tasky/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:tasky/core/utils/size_config.dart';
import 'package:tasky/core/widgets/space_widget.dart';

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({
    super.key,
    required this.text,
    this.iconData,
    this.onTap,
    this.color,
  });
  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: AppColors.kGprimary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xff707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(iconData, color: color),
            HorizintalSpace(2),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtonWithIconImage extends StatelessWidget {
  const CustomButtonWithIconImage({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
    this.color,
  });
  final String text;
  final Image image;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: AppColors.kGprimary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xff707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
            const HorizintalSpace(1),
            image,
          ],
        ),
      ),
    );
  }
}
