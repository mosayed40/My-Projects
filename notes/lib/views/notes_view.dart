import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/custom_appbar_icon.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes', style: TextStyle(fontSize: 28)),
        actions: [CustomSearchIcon(icon: Icons.search, onPressed: () {})],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        shape: const CircleBorder(),
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
