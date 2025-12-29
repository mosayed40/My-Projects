import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        context.read<NotesCubit>().fetchAllNotes();
        final cubit = context.read<NotesCubit>();
        final notes = cubit.notesData ?? [];

        if (notes.isEmpty) {
          return const Center(
            child: Text('No notes available', style: TextStyle(fontSize: 18)),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
