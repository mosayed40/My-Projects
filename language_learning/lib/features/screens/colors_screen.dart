import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/core/theme/color_theme.dart';
import 'package:language_learning/features/widgets/item.dart';
import 'package:language_learning/features/widgets/title_app_bar_screen.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
      jpName: 'kuro',
      enName: 'black',
      audio: 'sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      jpName: 'chairo',
      enName: 'brown',
      audio: 'sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      jpName: 'odoiro',
      enName: 'dusty_yellow',
      audio: 'sounds/colors/dusty_yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      jpName: 'midori',
      enName: 'green',
      audio: 'sounds/colors/grey.wav',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      jpName: 'haiiro',
      enName: 'grey',
      audio: 'sounds/colors/green.wav',
      image: 'assets/images/colors/color_grey.png',
    ),
    ItemModel(
      jpName: 'aka',
      enName: 'red',
      audio: 'sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      jpName: 'shiro',
      enName: 'white',
      audio: 'sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      jpName: 'kiiro',
      enName: 'yellow',
      audio: 'sounds/colors/yellows.wav',
      image: 'assets/images/colors/color_yellow.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTitleAppBar(title: 'Colors'),
        backgroundColor: AppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => Item(
          itmeData: colors[index],
          color: AppColors.colorsPage,
          backGroundImage: const Color(0xFFD0AEE3),
        ),
      ),
    );
  }
}
