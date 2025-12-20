import 'dart:developer';

import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userNameController = TextEditingController();
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
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            CustomTextField(
              labelText: 'UserName',
              hintText: 'Enter your UserName...',
              controller: userNameController,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              labelText: 'Email',
              hintText: 'Enter your email...',
              controller: emailController,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              labelText: 'Password',
              hintText: 'Enter your password...',
              controller: passwordController,
            ),

            const SizedBox(height: 30),
            CustomButton(
              textButton: 'Register',
              onPressed: () {
                log('Email: ${userNameController.text}');
                log('Email: ${emailController.text}');
                log('Password: ${passwordController.text}');
              },
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text(
                'Already have an account? Login',
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
