import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
  );
});
