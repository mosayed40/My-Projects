import 'package:flutter/material.dart';
import 'package:tune_player/models/tine_model.dart';

class CustomTuneItem extends StatelessWidget {
  const CustomTuneItem({super.key, required this.tuneModel});
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tuneModel.playAudio();
        },
        child: Container(color: tuneModel.color),
      ),
    );
  }
}
