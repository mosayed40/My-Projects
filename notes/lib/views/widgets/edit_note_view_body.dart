import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController editTitleContriller = .new();
    TextEditingController editContentContriller = .new();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(hintText: 'Title', controller: editTitleContriller),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            controller: editContentContriller,
          ),
        ],
      ),
    );
  }
}
