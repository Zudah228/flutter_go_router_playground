import 'package:flutter/material.dart';

abstract final class MainAppTheme {
  const MainAppTheme._();

  static const _seedColor = Colors.lightGreen;
  static const _secondaryColor = Colors.brown;

  static ThemeData get light {
    return _base(ColorScheme.fromSeed(
      seedColor: _seedColor,
      secondary: _secondaryColor,
    ));
  }

  static ThemeData get dark {
    return _base(ColorScheme.fromSeed(
      seedColor: _seedColor,
      secondary: _secondaryColor,
      brightness: Brightness.dark,
    ));
  }

  static ThemeData _base(ColorScheme colorScheme) {
    final foundation = ThemeData(colorScheme: colorScheme);

    return foundation.copyWith(
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        showDragHandle: true,
      ),
      navigationBarTheme: const NavigationBarThemeData(),
    );
  }
}
