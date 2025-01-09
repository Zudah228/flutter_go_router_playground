import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      body = const _EmptyBody();
    } else {
      body = SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
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
            )
          ],
        ),
      );
    }

    return Scaffold(
      primary: false,
      body: body,
    );
  }
}

class _EmptyBody extends StatelessWidget {
  const _EmptyBody();

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ).copyWith(
        bottom: kToolbarHeight + MediaQuery.paddingOf(context).top + 80,
      ),
      child: Center(
        child: Text(
          '該当するノート\nが\nありませんでしたっっっっよ',
          style: textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
