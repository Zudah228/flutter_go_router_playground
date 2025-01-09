import 'package:flutter/material.dart';

class LogoViewerPage extends StatelessWidget {
  const LogoViewerPage({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$count' '個表示'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [for (var i = 0; i < count; i++) const FlutterLogo()],
      ),
    );
  }
}
