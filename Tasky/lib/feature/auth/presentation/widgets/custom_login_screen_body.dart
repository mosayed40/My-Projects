import 'package:get/get.dart';
import 'package:tasky/core/theme/colors.dart';
import 'package:tasky/core/utils/size_config.dart';
import 'package:tasky/core/widgets/custom_button.dart';
import 'package:tasky/core/widgets/custom_text_form_field.dart';
import 'package:tasky/core/widgets/space_widget.dart';
import 'package:tasky/feature/auth/presentation/sign_up_screen.dart';
import 'package:tasky/feature/auth/presentation/widgets/custom_navigation_text.dart';
import 'package:tasky/feature/auth/presentation/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class CustomLoginScreenBody extends StatefulWidget {
  const CustomLoginScreenBody({super.key});

  @override
  State<CustomLoginScreenBody> createState() => _CustomLoginScreenBodyState();
}

class _CustomLoginScreenBodyState extends State<CustomLoginScreenBody> {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passowrdController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    bool isPassowrd = false;

    @override
    void dispose() {
      phoneController.dispose();
      passowrdController.dispose();
      super.dispose();
    }

    return SafeArea(
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Frame.png',
                height: SizeConfig.defaultSize! * 50,
                width: SizeConfig.screenWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                    const VerticalSpace(2.5),
                    CustomTextFormFeild(phoneController: phoneController),
                    const VerticalSpace(2),
                    CustomTextFormField(
                      textFieldController: passowrdController,
                      label: 'Password...',
                      obscureText: isPassowrd,
                      suffixIcon: IconButton(
                        onPressed: () {
                          // setState(() {
                          //   isPassowrd = isPassowrd == true ? false : true;
                          //   print('Show passowrd...$isPassowrd');
                          // });
                        },
                        icon: const Icon(
                          Icons.visibility_outlined,
                          color: AppColors.grayMedium,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Valid input';
                        }
                      },
                    ),
                    const VerticalSpace(2),
                    CustomButtonWithIcon(
                      text: 'Sign In',
                      onTap: () {
                        print('Sign In...');
                      },
                    ),
                    const VerticalSpace(1.5),
                    CustomNavigationText(
                      promptText: 'Didn’t have any account?',
                      actionText: 'Sign Up here',
                      onPressed: () {
                        Get.to(
                          () => SignUpScreen(),
                          transition: Transition.rightToLeft,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
