import 'dart:developer';

import 'package:chat_app/pages/register_page.dart';
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
      backgroundColor: Color(0xff2b475e),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            Image.asset('assets/images/scholar.png', height: 100, width: 100),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
            const Spacer(flex: 2),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: const Text(
                'Don\'t have an account? Register page',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
