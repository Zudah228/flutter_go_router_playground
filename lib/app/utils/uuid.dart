import 'package:uuid/uuid.dart';

abstract final class UuidGenerator {
  const UuidGenerator._();

  static const _uuid = Uuid();

  static String generate() {
    return _uuid.v4();
  }
}
