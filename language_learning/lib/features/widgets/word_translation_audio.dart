import 'package:flutter/material.dart';
import 'package:language_learning/core/models/items_model.dart';

class WordTranslationAudio extends StatelessWidget {
  const WordTranslationAudio({super.key, required this.ItemList});
  final ItemModel ItemList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'jp :  ${ItemList.jpName}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'en :  ${ItemList.enName}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            ItemList.playSound();
          },
          icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
        ),
      ],
    );
  }
}
