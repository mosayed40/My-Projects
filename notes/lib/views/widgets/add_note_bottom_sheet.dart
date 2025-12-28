import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const CustomTextField(hintText: 'Title'),
            const SizedBox(height: 16),
            const CustomTextField(hintText: 'Content', maxLines: 5),
            const SizedBox(height: 64),
            CustomButton(onTap: () {}, text: 'Add'),
          ],
        ),
      ),
    );
  }
}
