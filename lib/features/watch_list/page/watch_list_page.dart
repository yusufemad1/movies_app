import 'package:flutter/material.dart';
import 'package:movies_app/features/watch_list/widgets/watech_list_widget.dart';

class WatchListPage extends StatelessWidget {
  static String routeName = "WatchListPage";

  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Watchlist',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                ),
              ),
            ),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),
            WatchListWidget(),



          ],
        ),
      ),
    );
  }
}
