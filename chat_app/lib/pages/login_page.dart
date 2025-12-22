// ignore_for_file: use_build_context_synchronously
import 'package:chat_app/constants/constant.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_logo.dart';
import 'package:chat_app/widgets/custom_text_form_field.dart';
import 'package:chat_app/helper/show_snac_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = 'loginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;
  bool _obscureText = true;

  GlobalKey<FormState> formState = GlobalKey();

  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formState,
            child: ListView(
              children: [
                const SizedBox(height: 100),
                CustomLogo(),
                const SizedBox(height: 100),
                const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: emailController,
                  suffixIcon: Icon(Icons.email_outlined, color: Colors.white),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'It cannot be empty.';
                    } else if (!data.contains('@') || !data.contains('.')) {
                      return 'Enter a valid email';
                    }
                  },
                  labelText: 'Email',
                  hintText: 'Enter your email...',
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  obscureText: _obscureText,
                  controller: passwordController,
                  suffixIcon: IconButton(
                    onPressed: _togglePasswordVisibility,
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'It cannot be empty.';
                    } else if (data.length < 6) {
                      return 'The password is less than 6';
                    }
                  },
                  labelText: 'Password',
                  hintText: 'Enter your password...',
                ),
                const SizedBox(height: 30),
                CustomButton(
                  textButton: 'Login',
                  onPressed: () async {
                    if (formState.currentState!.validate()) {
                      setState(() => isLoading = true);
                      try {
                        await loginUser(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        if (!mounted) return;
                        Navigator.pushNamed(
                          context,
                          ChatPage.id,
                          arguments: emailController.text,
                        );
                        emailController.clear();
                        passwordController.clear();
                        return;
                      } on FirebaseAuthException catch (e) {
                        if (!mounted) return;
                        if (e.code == 'user-not-found') {
                          showSnacBar(
                            context,
                            message: 'No user found for that email.',
                          );
                        } else if (e.code == 'wrong-password') {
                          showSnacBar(
                            context,
                            message: 'Wrong password provided for that user.',
                          );
                        }
                      } catch (e) {
                        if (!mounted) return;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: const Color(0xFF8D0101),
                            content: Text(
                              'error: $e',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      } finally {
                        if (mounted) {
                          setState(() => isLoading = false);
                        }
                      }
                    }
                  },
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
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
      ),
    );
  }
}

Future<void> loginUser({
  required String email,
  required String password,
}) async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
}
