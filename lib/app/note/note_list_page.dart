import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_core/router/routes.dart';
import 'providers/note_list_provider.dart';

class NoteListPage extends ConsumerWidget {
  const NoteListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final noteList = ref.watch(noteListNotifierProvider);

    return ListView.builder(
      itemCount: noteList.length,
      itemBuilder: (context, index) {
        final note = noteList[index];

        return ListTile(
          title: Text(note.note),
          subtitle: Text(note.id),
          onTap: () {
            NoteEditRoute(note.id).push(context);
          },
        );
      },
    );
  }
}
