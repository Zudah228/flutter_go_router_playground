import 'package:flutter/material.dart';

class NoteNotFoundView extends StatelessWidget {
  const NoteNotFoundView({super.key});

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
          '該当するノート\nが\nありませんでした',
          style: textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
