import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/core/theme/color_theme.dart';
import 'package:language_learning/features/widgets/item.dart';
import 'package:language_learning/features/widgets/title_app_bar_screen.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ItemModel> familyMembers = const [
      ItemModel(
        jpName: '',
        enName: 'daughtr',
        audio: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'father',
        audio: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'grand_father',
        audio: 'sounds/family_members/grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'grand_mother',
        audio: 'sounds/family_members/grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'mother',
        audio: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'older_bother',
        audio: 'sounds/family_members/older_bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'older_sister',
        audio: 'sounds/family_members/older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'son',
        audio: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'younger_brohter',
        audio: 'sounds/family_members/younger_brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
      ),
      ItemModel(
        jpName: '',
        enName: 'younger_sister',
        audio: 'sounds/family_members/younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const CustomTitleAppBar(title: 'Family Members'),
        backgroundColor: AppColors.appBarColor,
      ),

      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) => Item(
          itmeData: familyMembers[index],
          color: AppColors.familyMembersPage,
          // backGroundImage: Color(0xFFD0AEE3),
        ),
      ),
    );
  }
}
