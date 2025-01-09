import 'package:flutter/material.dart';
import '../global_keys/global_keys.dart';

void showSnackBar(String message) {
  final state = globalScaffoldMessengerKey.currentState!;

  state.clearSnackBars();
  state.showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
