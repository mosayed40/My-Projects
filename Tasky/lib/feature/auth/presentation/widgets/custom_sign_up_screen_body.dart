import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasky/core/theme/colors.dart';
import 'package:tasky/core/utils/size_config.dart';
import 'package:tasky/core/widgets/custom_button.dart';
import 'package:tasky/core/widgets/custom_text_form_field.dart';
import 'package:tasky/core/widgets/space_widget.dart';
import 'package:tasky/feature/auth/presentation/login_screen.dart';
import 'package:tasky/feature/auth/presentation/widgets/custom_navigation_text.dart';

class CustomSignUpScreenBody extends StatefulWidget {
  const CustomSignUpScreenBody({super.key});

  @override
  State<CustomSignUpScreenBody> createState() => _CustomSignUpScreenBodyState();
}

class _CustomSignUpScreenBodyState extends State<CustomSignUpScreenBody> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            VerticalSpace(1),
            Center(
              child: Image.asset(
                'assets/images/Frame.png',
                height: SizeConfig.screenHeight! / 3,
                // width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.titleText,
                    ),
                  ),
                  const VerticalSpace(2),
                  CustomTextFormField(
                    label: 'Name...',
                    textFieldController: nameController,
                    obscureText: false,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {}
                    },
                  ),
                  const VerticalSpace(2),
                  CustomTextFormField(
                    label: 'Phone Number...',
                    textFieldController: phoneController,
                    obscureText: false,
                    validator: (val) {},
                  ),
                  const VerticalSpace(2),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    hint: const Text('Choose experience Level'),
                    items: ['fresh', 'Junior', 'Mid', 'Senior']
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (value) {},
                  ),
                  VerticalSpace(2),
                  CustomTextFormField(
                    label: 'Address...',
                    textFieldController: addressController,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {}
                    },
                  ),
                  const VerticalSpace(2),
                  CustomTextFormField(
                    label: 'Password...',
                    obscureText: false,
                    textFieldController: passwordController,
                    validator: (val) {},
                  ),
                  const VerticalSpace(3),
                  CustomButtonWithIcon(
                    text: 'Sign Up',
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print('تم التسجيل بنجاح');
                      }
                    },
                  ),
                  const VerticalSpace(1),
                  CustomNavigationText(
                    promptText: 'Didn’t have any account?',
                    actionText: 'Sign in',
                    onPressed: () {
                      Get.to(
                        () => LoginView(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
