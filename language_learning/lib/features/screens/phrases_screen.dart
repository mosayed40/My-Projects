import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/core/theme/color_theme.dart';
import 'package:language_learning/features/widgets/phrases_item.dart';
import 'package:language_learning/features/widgets/title_app_bar_screen.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});
  final List<ItemModel> phrasesModel = const [
    ItemModel(
      jpName: '1',
      enName: 'dont_forget_to_subscribe',
      audio: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: '2',
      enName: 'how_are_you_feeling',
      audio: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: '3',
      enName: 'are_you_coming',
      audio: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: '4',
      enName: 'i_love_anime',
      audio: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: '5',
      enName: 'i_love_programming',
      audio: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: '6',
      enName: 'programming_is_easy',
      audio: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: '7',
      enName: 'what_is_your_name',
      audio: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpName: '8',
      enName: 'where_are_you_going',
      audio: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: '9',
      enName: 'yes im coming',
      audio: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTitleAppBar(title: 'Pheases'),
        backgroundColor: AppColors.appBarColor,
      ),

      // leading:
      body: ListView.builder(
        itemCount: phrasesModel.length,
        itemBuilder: (context, index) => PhrasesItem(
          phrasesModel: phrasesModel[index],
          color: AppColors.phrasesPage,
        ),
      ),
    );
  }
}
