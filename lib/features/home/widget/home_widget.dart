import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/features/home/page/movie_details.dart';
import 'package:movies_app/models/popular.dart';
import 'package:movies_app/network/api_manager.dart';

import '../../watch_list/widgets/boxes.dart';
import '../../watch_list/widgets/db.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key, required this.snapshot});

  final AsyncSnapshot snapshot;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    Apimanger apimanger = Apimanger();
    return CarouselSlider.builder(
        itemCount: 10,
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 3,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
        ),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MovieDetails(popular: widget.snapshot.data[itemIndex]),
                  ));
              Apimanger.morlist.clear();
            },
            child: Stack(
              children: [
                SizedBox(
                    child: Image.network(
                        '${Constants.urlimage}${widget.snapshot.data[itemIndex].background}')),
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.play_circle_fill_rounded,
                        color: Colors.white,
                        size: 70,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Container(
                    height: 200,
                    width: 130,
                    child: Stack(
                      children: [
                        Image.network(
                          '${Constants.urlimage}${widget.snapshot.data[itemIndex].poster}',
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              boxDb.put(
                                  'key_${widget.snapshot.data[itemIndex].id}',
                                  db(
                                    photo: widget
                                        .snapshot.data[itemIndex].background,
                                    name: widget.snapshot.data[itemIndex].title,
                                    date: widget.snapshot.data[itemIndex].date,
                                  ));
                              // print();
                            });
                          },
                          child: Image.asset(
                            "assets/image/icon_add.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 245,
                  left: 165,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.snapshot.data[itemIndex].title}',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          '${widget.snapshot.data[itemIndex].date}',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xffB5B4B4)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
