import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_appbar_icon.dart';
import 'package:notes/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Edit Note', style: TextStyle(fontSize: 28)),
        actions: [CustomSearchIcon(icon: Icons.check, onPressed: () {})],
      ),
      body: const EditNoteViewBody(),
    );
  }
}
