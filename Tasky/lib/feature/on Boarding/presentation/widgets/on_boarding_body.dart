import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasky/core/theme/colors.dart';
import 'package:tasky/core/utils/size_config.dart';
import 'package:tasky/core/widgets/custom_button.dart';
import 'package:tasky/core/widgets/space_widget.dart';
import 'package:tasky/feature/auth/presentation/login_screen.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Frame.png',
          width: SizeConfig.screenWidth,
          height: SizeConfig.defaultSize! * 56,
          fit: BoxFit.fill,
        ),
        const Text(
          'Task Management & \n To-Do List',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.titleText,
          ),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(2),
        const Text(
          'This productive tool is designed to help \n you better manage your task  \n project-wise conveniently!',
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 2,
            color: Color(0xff6E6A7C),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const VerticalSpace(3),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: CustomButtonWithIconImage(
            onTap: () {
              Get.to(
                () => LoginView(),
                transition: Transition.rightToLeft,
                duration: Duration(milliseconds: 500),
              );
            },
            text: 'Let’s Start',
            image: Image.asset('assets/icons/icon_onBoarding.png'),
          ),
        ),
      ],
    );
  }
}
