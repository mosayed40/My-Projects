import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';
import 'package:language_learning/features/widgets/word_translation_audio.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.itmeData,
    this.color,
    this.backGroundImage,
  });
  final ItemModel itmeData;
  final Color? color;
  final Color? backGroundImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          itmeData.image == null
              ? SizedBox()
              : Container(
                  margin: const EdgeInsets.only(right: 16),
                  color: backGroundImage ?? Color(0xfffff6dc),
                  child: Image.asset(itmeData.image!),
                ),
          Expanded(child: WordTranslationAudio(ItemList: itmeData)),
        ],
      ),
    );
  }
}
