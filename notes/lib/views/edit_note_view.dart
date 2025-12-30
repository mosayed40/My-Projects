import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_appbar_icon.dart';
import 'package:notes/views/widgets/custom_text_form_field.dart';
import 'package:notes/views/widgets/edit_note_colors_list.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Edit Note', style: TextStyle(fontSize: 28)),
        actions: [
          CustomSearchIcon(
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              onChanged: (val) {
                title = val;
              },
              hintText: widget.note.title,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              onChanged: (val) {
                content = val;
              },
              hintText: widget.note.subTitle,
              maxLines: 5,
            ),

            EditNoteColorsList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
