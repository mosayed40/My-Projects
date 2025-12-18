import 'package:flutter/material.dart';
import 'package:tune_player/models/tine_model.dart';
import 'package:tune_player/widgets/custom_tune_item.dart';

class TuneScreen extends StatelessWidget {
  const TuneScreen({super.key});
  final List<TuneModel> tuneItemModel = const [
    TuneModel(color: Color(0xffF44336), audio: 'note1.wav'),
    TuneModel(color: Color(0xffF89800), audio: 'note2.wav'),
    TuneModel(color: Color(0xffFEEB3B), audio: 'note3.wav'),
    TuneModel(color: Color(0xff4CAF50), audio: 'note4.wav'),
    TuneModel(color: Color(0xff2F9688), audio: 'note5.wav'),
    TuneModel(color: Color(0xff2896F3), audio: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), audio: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tune', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff1F2930),
      ),
      body: Column(
        children: tuneItemModel
            .map((item) => CustomTuneItem(tuneModel: item))
            .toList(),
      ),
    );
  }
}
