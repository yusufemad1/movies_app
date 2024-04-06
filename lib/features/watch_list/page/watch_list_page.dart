import 'package:flutter/material.dart';
import 'package:movies_app/features/watch_list/widgets/db.dart';
import 'package:movies_app/features/watch_list/widgets/watech_list_widget.dart';

import '../widgets/boxes.dart';

class WatchListPage extends StatefulWidget {
  static String routeName = "WatchListPage";

  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
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
           SizedBox(
             height: 2000,
             child: ListView.builder(
                 itemCount: boxDb.length,
                 itemBuilder: (context, index) {
                   db Db = boxDb.getAt(index);
                   return WatchListWidget(image:Db.photo ,name:Db.name ,date:Db.date,);
                 },),
           ),
          ],
        ),
      ),
    );
  }
}
