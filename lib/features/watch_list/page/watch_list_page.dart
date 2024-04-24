import 'package:animate_do/animate_do.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          FadeInRight(
            delay: Duration(milliseconds: 300),
            child: Padding(
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
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: boxDb.length,
              itemBuilder: (context, index) {
                db Db = boxDb.getAt(index);
                return FadeInRight(
                    delay: Duration(milliseconds: 600),
                    child: Stack(children: [
                      WatchListWidget(
                        image: Db.photo,
                        name: Db.name,
                        date: Db.date,
                      ),
                      Positioned(
                        left:22 ,
                        top: 10,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              boxDb.deleteAt(index);
                            });
                          },
                          child: ImageIcon(
                            AssetImage('assets/image/Icon awesome-bookmark.png'),
                            color: Color(0xFFFFBB3B),
                          ),
                        ),
                      ),
                      Positioned(
                        left:22 ,
                        top: 10,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              boxDb.deleteAt(index);
                            });
                          },
                          child: ImageIcon(
                            AssetImage('assets/image/Icon awesome-check.png'),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]));
              },
            ),
          ),
        ],
      ),
    );
  }
}
