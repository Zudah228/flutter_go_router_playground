import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../repository/note/note.dart';
import '../../utils/uuid.dart';

part 'note_list_provider.g.dart';

@riverpod
class NoteListNotifier extends _$NoteListNotifier {
  @override
  List<Note> build() {
    return [
      for (var i = 0; i < 10; i++)
        Note(id: UuidGenerator.generate(), note: 'note $i')
    ];
  }

  void update(String id, {required String note}) {
    state = [
      for (final item in state)
        if (item.id == id) item.copyWith(note: note) else item
    ];
  }

  void create({required String note}) {
    state = [
      Note(id: UuidGenerator.generate(), note: note),
      ...state,
    ];

  }
}
