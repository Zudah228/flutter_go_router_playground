import 'package:flutter/material.dart';

/// pop のアニメーションを１瞬で行う Route
class NoTransitionDialogRoute<T> extends DialogRoute<T> {
  NoTransitionDialogRoute({
    required super.context,
    required super.builder,
    super.anchorPoint,
    super.barrierColor,
    super.barrierDismissible,
    super.barrierLabel,
    super.settings,
    super.themes,
    super.traversalEdgeBehavior,
    super.useSafeArea
  });

  @override
  Duration get reverseTransitionDuration => Duration.zero;
}
