import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  // TODO
  // どんな構造にしたいか（タイトル、アイコン）section（タイトル）,list ,tile（タイトル、アイコン）
  // 1. 共通グループコンポーネント
  // 2. ドラッグ&ドロップできるリスト（共通化）

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Text('Tabs'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
