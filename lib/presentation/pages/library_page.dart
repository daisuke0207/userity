import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tabCount = 5;
    appCard(IconData iconData, String name) {
      return ListTile(
        leading: Icon(iconData),
        title: Text(name),
      );
    }

    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: tabCount,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Library'),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(text: '一覧'),
                Tab(text: '時間'),
                Tab(text: '継続'),
                Tab(text: '装飾'),
                Tab(text: '遊び'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                  appCard(Icons.timer, 'タイマー'),
                  appCard(Icons.alarm, 'ストップウォッチ'),
                  appCard(Icons.polymer_outlined, 'ポモドーロ・タイマー'),
                ],
              ),
              ListView(
                children: <Widget>[
                  appCard(Icons.timer, 'タイマー'),
                  appCard(Icons.alarm, 'ストップウォッチ'),
                  appCard(Icons.polymer_outlined, 'ポモドーロ・タイマー'),
                ],
              ),
              ListView(
                children: <Widget>[
                  appCard(Icons.timer, 'タイマー'),
                  appCard(Icons.alarm, 'ストップウォッチ'),
                  appCard(Icons.polymer_outlined, 'ポモドーロ・タイマー'),
                ],
              ),
              ListView(
                children: <Widget>[
                  appCard(Icons.timer, 'タイマー'),
                  appCard(Icons.alarm, 'ストップウォッチ'),
                  appCard(Icons.polymer_outlined, 'ポモドーロ・タイマー'),
                ],
              ),
              ListView(
                children: <Widget>[
                  appCard(Icons.timer, 'タイマー'),
                  appCard(Icons.alarm, 'ストップウォッチ'),
                  appCard(Icons.polymer_outlined, 'ポモドーロ・タイマー'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
