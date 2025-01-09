import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NumberPickerPage extends StatelessWidget {
  const NumberPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 1; i <= 5; i++)
            FilledButton(
              onPressed: () {
                context.pop(i);
              },
              child: Text(
                i.toString(),
              ),
            )
        ],
      ),
    );
  }
}
