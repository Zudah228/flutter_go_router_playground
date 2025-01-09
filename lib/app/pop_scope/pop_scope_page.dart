import 'package:flutter/material.dart';

import '../../app_core/ui_parts/confirmation_dialog.dart';

class PopScopePage extends StatefulWidget {
  const PopScopePage({super.key});

  @override
  State<PopScopePage> createState() => PopScopePageState();
}

class PopScopePageState extends State<PopScopePage> {
  bool popGuard = true;

  void _setPopGuard() {
    setState(() {
      popGuard = !popGuard;
    });
  }

  Future<bool> _showConfirmationDialog() => ConfirmationDialog.show(
        context,
        noTransitionOnPop: true,
        args: (title: '戻りますか？'),
      );

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !popGuard,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop || !popGuard) {
          return;
        }

        if (await _showConfirmationDialog() && context.mounted) {
          Navigator.of(context).pop(result);

          return;
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: FilledButton(
            onPressed: _setPopGuard,
            child: Text('Pop ガード：$popGuard'),
          ),
        ),
      ),
    );
  }
}
