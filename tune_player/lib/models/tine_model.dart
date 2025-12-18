import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String audio;

  const TuneModel({required this.color, required this.audio});

  playAudio() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
