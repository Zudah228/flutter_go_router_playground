import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_core/ui_parts/snack_bar.dart';
import 'providers/note_list_provider.dart';

class NoteCreatePage extends ConsumerStatefulWidget {
  const NoteCreatePage({super.key});

  @override
  ConsumerState<NoteCreatePage> createState() => _NoteCreatePageState();
}

class _NoteCreatePageState extends ConsumerState<NoteCreatePage> {
  final _textEditingController = TextEditingController();

  bool _isValid = false;

  void _save() {
    if (!_isValid) {
      return;
    }

    ref
        .read(noteListNotifierProvider.notifier)
        .create(note: _textEditingController.text);

    showSnackBar('ノートを作成しました！');
    Navigator.of(context).pop();
  }

  bool _validate() {
    return _textEditingController.text.isNotEmpty;
  }

  void _onFormChanged() {
    setState(() {
      _isValid = _validate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: _onFormChanged,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              TextFormField(
                controller: _textEditingController,
                maxLines: null,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: const InputDecoration(
                  label: Text('Note'),
                ),
                onEditingComplete: _save,
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton(
                  onPressed: _isValid ? _save : null,
                  child: const Text('保存'),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
