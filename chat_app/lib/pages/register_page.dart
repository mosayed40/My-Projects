// ignore_for_file: use_build_context_synchronously
import 'package:chat_app/constants/colors.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

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
              const SizedBox(height: 75),
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
              const SizedBox(height: 75),
              const Text(
                'Sign up',
                style: TextStyle(color: Colors.white, fontSize: 24),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                onChanged: (data) {
                  email = data;
                },
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'It cannot be empty.';
                  }
                },
                labelText: 'Email',
                hintText: 'Enter your email...',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                onChanged: (data) {
                  password = data;
                },
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'It cannot be empty.';
                  }
                },
                labelText: 'Password',
                hintText: 'Enter your password...',
              ),

              const SizedBox(height: 30),
              CustomButton(
                textButton: 'Register',
                onPressed: () async {
                  if (formState.currentState!.validate()) {
                    try {
                      await registerUser(email, password);
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        showSnacBar(
                          context,
                          message: 'The password provided is too weak.',
                        );
                      } else if (e.code == 'email-already-in-use') {
                        showSnacBar(
                          context,
                          message: 'The account already exists for that email.',
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: const Color(0xFF8D0101),
                          content: Text(
                            'error: $e',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }
                    showSnacBar(
                      context,
                      message: 'Success Create Account',
                      color: Color(0xFF47B24B),
                    );
                  } else {}
                },
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Already have an account? Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnacBar(
    BuildContext context, {
    required String message,
    Color color = const Color(0xFF8D0101),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(message, style: const TextStyle(color: Colors.white)),
      ),
    );
  }

  Future<void> registerUser(String? email, String? password) async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
