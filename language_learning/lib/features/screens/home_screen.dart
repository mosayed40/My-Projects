import 'package:flutter/material.dart';
import 'package:language_learning/core/theme/color_theme.dart';
import 'package:language_learning/features/screens/colors_screen.dart';
import 'package:language_learning/features/screens/family_members_screen.dart';
import 'package:language_learning/features/screens/numbere_screen.dart';
import 'package:language_learning/features/screens/phrases_screen.dart';
import 'package:language_learning/features/widgets/Category.dart';
import 'package:language_learning/features/widgets/title_app_bar_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTitleAppBar(title: 'Taku'),
        backgroundColor: AppColors.appBarColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbereScreen()),
              );
            },
            color: AppColors.numbersPage,
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilyMembers()),
              );
            },
            color: AppColors.familyMembersPage,
            text: 'FamilyMembers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsScreen()),
              );
            },
            color: AppColors.colorsPage,
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasesScreen()),
              );
            },
            color: AppColors.phrasesPage,
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
