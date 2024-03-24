import 'package:flutter/material.dart';
import 'package:movies_app/features/browse/page/browse_page.dart';
import 'package:movies_app/features/home/page/home_page.dart';
import 'package:movies_app/features/search/page/search_page.dart';
import 'package:movies_app/features/watch_list/page/watch_list_page.dart';

class LayoutView extends StatefulWidget {
  static String routeName = 'Layout';

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List screans = [
    HomePage(),
    SearchPage(),
    BrowsePage(),
    WatchListPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screans[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/image/Home_ icon.png')),
                label: 'HOME'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/image/search_icon.png')),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/image/Browse_icon.png')),
                label: 'BROWSE'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/image/whatch_logo.png')),
                label: 'WATCHLIST'),

          ]),
    );
  }
}
