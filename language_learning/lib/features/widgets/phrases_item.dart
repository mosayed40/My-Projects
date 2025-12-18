import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/features/widgets/word_translation_audio.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.phrasesModel,
    required this.color,
  });
  final ItemModel phrasesModel;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: color,
      height: 100,
      width: double.infinity,
      child: WordTranslationAudio(ItemList: phrasesModel),
    );
  }
}
