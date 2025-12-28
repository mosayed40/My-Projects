import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleContriller = .new();
    TextEditingController contentContriller = .new();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(hintText: 'Title', controller: titleContriller),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              maxLines: 5,
              controller: contentContriller,
            ),
            const SizedBox(height: 64),
            CustomButton(onTap: () {}, text: 'Add'),
          ],
        ),
      ),
    );
  }
}
