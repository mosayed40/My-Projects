import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_search_icon.dart';
import 'package:notes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes', style: TextStyle(fontSize: 28)),
        actions: [CustomSearchIcon(icon: Icons.search, onPressed: () {})],
      ),
      body: const NotesViewBody(),
    );
  }
}
