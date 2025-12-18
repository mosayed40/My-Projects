import 'package:flutter/material.dart';
import 'package:tasky/feature/auth/presentation/widgets/custom_sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomSignUpScreenBody(),
    );
  }
}
