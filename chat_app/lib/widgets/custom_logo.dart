import 'package:chat_app/constants/constant.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(kLogo, height: 100, width: 100),
        const Text(
          'Scholar Chat',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'pacifico',
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
