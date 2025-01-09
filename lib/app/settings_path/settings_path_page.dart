import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../repository/initial_path/initial_path_repository.dart';

class SettingsPathPage extends ConsumerStatefulWidget {
  const SettingsPathPage({super.key});

  @override
  ConsumerState<SettingsPathPage> createState() => _SettingsPathPageState();
}

class _SettingsPathPageState extends ConsumerState<SettingsPathPage> {
  late String _path;

  void _refreshPath() {
    _path = ref.read(initialPathRepositoryProvider).get() ?? '';
  }

  late final TextEditingController _textEditingController;

  void _save() async {
    await ref
        .read(initialPathRepositoryProvider)
        .set(_textEditingController.text);
    _path = _textEditingController.text;

    FocusManager.instance.primaryFocus?.unfocus();
    setState(() {});
  }

  void _clear() async {
    await ref.read(initialPathRepositoryProvider).remove();

    _path = '';
    _textEditingController.clear();
    setState(() {});
  }

  @override
  void initState() {
    _refreshPath();
    _textEditingController = TextEditingController(text: _path);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('初期パスを設定'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _path,
                  style: themeData.textTheme.displayLarge,
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: _textEditingController,
                  onEditingComplete: _save,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FilledButton.tonal(
                      onPressed: _clear,
                      child: const Text('クリア'),
                    ),
                    FilledButton(
                      onPressed: _save,
                      child: const Text('保存'),
                    ),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
