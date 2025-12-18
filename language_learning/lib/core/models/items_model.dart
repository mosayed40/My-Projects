import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String jpName;
  final String enName;
  final String audio;
  final String? image;

  const ItemModel({
    required this.jpName,
    required this.enName,
    required this.audio,
    this.image,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
