import 'dart:developer';

import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            Image.asset('assets/images/scholar.png', height: 100, width: 100),
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
            const SizedBox(height: 100),
            const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Enter your email...',
              labelText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              hintText: 'Enter your password...',
              labelText: 'Password',
              controller: passwordController,
            ),
            const SizedBox(height: 30),
            CustomButton(
              textButton: 'Login',
              onPressed: () {
                log('Email: ${emailController.text}');
                log('Password: ${passwordController.text}');
              },
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'registerPage');
              },
              child: const Text(
                'Don\'t have an account? Register',
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
