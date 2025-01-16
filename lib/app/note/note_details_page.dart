import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/note_not_found_view.dart';
import 'providers/note_list_provider.dart';

class NoteDetailsPage extends ConsumerWidget {
  const NoteDetailsPage({super.key, required this.noteId});

  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref
        .watch(noteListNotifierProvider)
        .firstWhereOrNull((e) => e.id == noteId);

    final Widget body;
    if (note == null) {
      body = const NoteNotFoundView();
    } else {
      body = SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(note.id),
            const SizedBox(height: 16),
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(note?.note ?? ''),
      ),
      body: body,
    );
  }
}
