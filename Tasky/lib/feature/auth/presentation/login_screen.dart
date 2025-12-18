import 'package:tasky/feature/auth/presentation/widgets/custom_login_screen_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomLoginScreenBody());
  }
}
