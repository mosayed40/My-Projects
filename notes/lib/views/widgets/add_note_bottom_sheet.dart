import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onSaved: (val) {
              title = val;
            },
            hintText: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onSaved: (val) {
              subTitle = val;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 64),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                log('Success');
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                  log('valed');
                });
              }
            },
            text: 'Add',
          ),
        ],
      ),
    );
  }
}
