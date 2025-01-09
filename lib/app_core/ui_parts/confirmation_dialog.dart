import 'package:flutter/material.dart';

import '../router/transitions/transition_routes/no_transition_dialog_route.dart';

typedef ConfirmationDialogArgs = ({String title});

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog._({
    required this.args,
  });

  final ConfirmationDialogArgs args;

  static Future<bool> show(
    BuildContext context, {
    required ConfirmationDialogArgs args,
    bool noTransitionOnPop = false,
  }) {
    Widget builder(BuildContext _) => ConfirmationDialog._(args: args);
    
    Route<bool> route = NoTransitionDialogRoute(
        context: context,
        builder: builder,
      );
    
    if (noTransitionOnPop) {
      route = NoTransitionDialogRoute(context: context, builder: builder);
    }

    return Navigator.of(context)
        .push<bool>(route)
        .then(
      (v) async {
        return v ?? false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(args.title),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text('いいえ'),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('はい'),
        )
      ],
    );
  }
}
