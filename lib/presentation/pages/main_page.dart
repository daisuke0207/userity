import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:userity/presentation/pages/home_page.dart';
import 'package:userity/presentation/pages/setting_page.dart';

final bottomTabViewProvider = StateProvider<ViewType>((ref) => ViewType.home);

enum ViewType {
  home,
  setting,
}

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  final pages = const [
    HomePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final view = ref.watch(bottomTabViewProvider.state);
    final PersistentTabController controller = PersistentTabController(
      initialIndex: view.state.index,
    );

    final persistentBottomItems = [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'ホーム',
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: '設定',
      ),
    ];

    return Scaffold(
      body: PersistentTabView(
        context,
        controller: controller,
        screens: pages,
        confineInSafeArea: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style14,
        items: persistentBottomItems,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
    );
  }
}
