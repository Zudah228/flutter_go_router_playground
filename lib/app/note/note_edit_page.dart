import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/note_not_found_view.dart';
import 'providers/note_list_provider.dart';

class NoteEditPage extends ConsumerWidget {
  const NoteEditPage(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note =
        ref.watch(noteListNotifierProvider).firstWhereOrNull((e) => e.id == id);

    final Widget body;
    if (note == null) {
      body = const NoteNotFoundView();
    } else {
      body = SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(id),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: note.note,
              maxLines: null,
              onChanged: (value) {
                ref
                    .read(noteListNotifierProvider.notifier)
                    .update(id, note: value);
              },
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('ノート編集')),
      body: body,
    );
  
  }
}
