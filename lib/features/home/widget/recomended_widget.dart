import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/features/home/page/movie_details.dart';
import 'package:movies_app/features/watch_list/widgets/db.dart';
import 'package:movies_app/network/api_manager.dart';
import 'package:shimmer/shimmer.dart';

import '../../watch_list/widgets/boxes.dart';

class RecomendedWidget extends StatefulWidget {
  RecomendedWidget({
    super.key,
    required this.snapshot,
  });

  final AsyncSnapshot snapshot;

  @override
  State<RecomendedWidget> createState() => _RecomendedWidgetState();
}

class _RecomendedWidgetState extends State<RecomendedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height / 3.2,
        color: Color(0xff282A28),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recomended",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            CarouselSlider.builder(
                itemCount: 19,
                options: CarouselOptions(
                    viewportFraction: 0.3,
                    initialPage: 1,
                    enableInfiniteScroll: false,
                    enlargeFactor: 1,
                    height: 190),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(
                          horizontal: 5.0,
                        ),
                        decoration: BoxDecoration(color: Color(0xff343534)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieDetails(
                                      popular: widget.snapshot.data[itemIndex]),
                                ));
                            Apimanger.morlist.clear();
                          },
                          child: Stack(
                            children: [
                              Image.network(
                                '${Constants.urlimage}${widget.snapshot.data[itemIndex].poster}',
                                width: MediaQuery.of(context).size.width,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    boxDb.put(
                                        'key_${widget.snapshot.data[itemIndex].id}',
                                        db(
                                          photo: widget.snapshot.data[itemIndex]
                                              .background,
                                          name: widget
                                              .snapshot.data[itemIndex].title,
                                          date: widget
                                              .snapshot.data[itemIndex].date,
                                        ));
                                    // print();
                                  });
                                },
                                child: Image.asset(
                                  "assets/image/icon_add.png",
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 39, left: 5),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Image.asset(
                                              "assets/image/icon_star.png")),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 37, left: 5),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            '${widget.snapshot.data[itemIndex].rate.toString()}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 22,
                                left: 5,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    '${widget.snapshot.data[itemIndex].title}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, left: 5),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      '${widget.snapshot.data[itemIndex].date}',
                                      style: TextStyle(
                                          color: Color(0xffB5B4B4),
                                          fontSize: 8),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
