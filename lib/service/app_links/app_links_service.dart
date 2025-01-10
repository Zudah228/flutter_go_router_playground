import 'package:app_links/app_links.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/subjects.dart';

part 'app_links_service.g.dart';

@riverpod
AppLinksService appLinksService(Ref ref) {
  return AppLinksService(AppLinks());
}

class AppLinksService {
  const AppLinksService(this._appLinks);
  final AppLinks _appLinks;

  BehaviorSubject<Uri> get listen {
    return BehaviorSubject<Uri>()
      ..addStream(_appLinks.uriLinkStream)
      ..map(
        (uri) {
          // ignore: avoid_print
          print(uri);

          return uri;
        },
      );
  }

  Future<Uri?> getInitialLink() async {
    return _appLinks.getInitialLink();
  }
}
