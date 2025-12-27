import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomNoteItem();
        },
      ),
    );
  }
}
