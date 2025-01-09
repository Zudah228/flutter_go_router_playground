import 'package:flutter/material.dart';

class NoTransitionRoute extends PageRouteBuilder {
  NoTransitionRoute({required WidgetBuilder pageBuilder})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) {
            return pageBuilder(context);
          },
        );
}
