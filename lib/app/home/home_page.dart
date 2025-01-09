import 'package:flutter/material.dart';

import '../../app_core/router/routes.dart';
import '../../app_core/ui_parts/snack_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 8,
      children: [
        FilledButton(
          onPressed: () async {
            final result = await const NumberPickerRoute().push(context);

            showSnackBar(result.toString());
          },
          child: const Text('ページの戻り値'),
        ),
        const _LogoViewerButton(),
        FilledButton.icon(
          onPressed: () {
            const OnExitRoute().push(context);
          },
          label: const Text('onExit'),
        ),
        FilledButton.icon(
          onPressed: () {
            const PopScopeRoute().push(context);
          },
          label: const Text('PopScope'),
        ),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: themeData.colorScheme.primaryContainer,
      ),
      padding: const EdgeInsets.all(8),
      child: DefaultTextStyle.merge(
        style: TextStyle(color: themeData.colorScheme.onPrimaryContainer),
        child: child,
      ),
    );
  }
}

class _LogoViewerButton extends StatefulWidget {
  const _LogoViewerButton();

  @override
  State<_LogoViewerButton> createState() => _LogoViewerButtonState();
}

class _LogoViewerButtonState extends State<_LogoViewerButton> {
  int _count = 1;
  void _setCount(double v) {
    setState(() {
      _count = v.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_count.toString()),
          Slider(
            max: 10,
            divisions: 10,
            value: _count.toDouble(),
            onChanged: _setCount,
          ),
          FilledButton(
            onPressed: () {
              LogoViewerRoute(count: _count).push(context);
            },
            child: const Text('ページ引数'),
          ),
        ],
      ),
    );
  }
}
