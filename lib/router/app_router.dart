import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:userity/presentation/pages/library_page.dart';
import 'package:userity/presentation/pages/setting_page.dart';

import '../presentation/pages/error_page.dart';
import '../presentation/pages/main_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (_, __) => const MainPage(),
      ),
      GoRoute(
        path: '/library',
        name: 'library',
        builder: (_, __) => const LibraryPage(),
      ),
      GoRoute(
        path: '/settings',
        name: 'settings',
        builder: (_, __) => const SettingPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
  );
});
