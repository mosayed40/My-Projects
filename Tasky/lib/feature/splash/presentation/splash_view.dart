import 'package:tasky/core/theme/colors.dart';
import 'package:tasky/feature/splash/presentation/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGprimary,
      body: SplashViewBody(),
    );
  }
}
