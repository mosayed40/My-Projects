import 'dart:developer';

import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  String? email;
  String? password;

  GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formState,
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
                onChanged: (data) {
                  email = data;
                },
                labelText: 'Email',
                hintText: 'Enter your email...',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                onChanged: (data) {
                  password = data;
                },
                labelText: 'Password',
                hintText: 'Enter your password...',
              ),
              const SizedBox(height: 30),
              CustomButton(
                textButton: 'Login',
                onPressed: () async {
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                          email: email!,
                          password: password!,
                        );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      log('---No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      log('---Wrong password provided for that user.');
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color(0xFF47B24B),
                        content: Text('Success Create Account'),
                      ),
                    );
                  }
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
      ),
    );
  }
}
