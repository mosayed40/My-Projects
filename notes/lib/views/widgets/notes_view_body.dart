import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 66, left: 16, right: 16),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomNoteItem();
        },
      ),
    );
  }
}
