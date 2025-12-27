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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.blue.withValues(alpha: 1.0),
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NotesViewBody(),
    );
  }
}
