import 'dart:async';

import 'package:flutter_soloud/flutter_soloud.dart';

class AudioPlayer {
  static final AudioPlayer _instance = AudioPlayer._internal();

  factory AudioPlayer() => _instance;

  AudioPlayer._internal() : _player = SoLoud.instance {
    _init();
  }

  final SoLoud _player;

  final _initializeCompleter = Completer<void>();

  Future<void> _init() async {
    await _player.init();
    _initializeCompleter.complete();
  }

  Future<SoundHandle> playUrl(String url) async {
    await _initializeCompleter.future;

    final source = await _player.loadUrl(url);

    return _player.play(source);
  }
}
