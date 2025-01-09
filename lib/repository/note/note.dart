// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String id,
    required String note,
  }) = _Note;

  const Note._();

  factory Note.fromJson(Map<String, Object?> json) => _$NoteFromJson(json);
}
