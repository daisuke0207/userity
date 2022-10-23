import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:userity/presentation/pages/home_page.dart';
import 'package:userity/presentation/pages/setting_page.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  final pages = const [
    HomePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedTabIndex = useState(0);

    void onTapBottomTab(int index) {
      selectedTabIndex.value = index;
    }

    return Scaffold(
      body: pages[selectedTabIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTabIndex.value,
        onTap: onTapBottomTab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '設定'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
