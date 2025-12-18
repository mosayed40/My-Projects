import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/core/theme/color_theme.dart';
import 'package:language_learning/features/widgets/item.dart';
import 'package:language_learning/features/widgets/title_app_bar_screen.dart';

class NumbereScreen extends StatelessWidget {
  const NumbereScreen({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      jpName: 'ichi',
      enName: 'one',
      audio: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      jpName: 'ni',
      enName: 'two',
      audio: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      jpName: 'san',
      enName: 'three',
      audio: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      jpName: 'yon/shi',
      enName: 'four',
      audio: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      jpName: 'go',
      enName: 'five',
      audio: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      jpName: 'roku',
      enName: 'six',
      audio: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      jpName: 'nana/shichi',
      enName: 'seven',
      audio: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      jpName: 'hachi',
      enName: 'eight',
      audio: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      jpName: 'kyuu/ku',
      enName: 'nine',
      audio: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      jpName: 'juu',
      enName: 'ten',
      audio: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTitleAppBar(title: 'Numbers'),
        backgroundColor: AppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) =>
            Item(itmeData: numbers[index], color: AppColors.numbersPage),
      ),
    );
  }
}
