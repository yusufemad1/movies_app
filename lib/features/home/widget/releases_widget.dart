import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home/page/movie_details.dart';

class ReleasesWidget extends StatelessWidget {
  const ReleasesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:  MediaQuery.of(context).size.height/4.3,
      color: Color(0xff282A28),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "New Releases ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 0.3,
                initialPage: 1,
                enableInfiniteScroll: false,
                enlargeFactor: 1,
                height: 130),
            items: [1, 2, 3, 4, 5, 7, 7, 8, 9].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.symmetric(
                      horizontal: 5.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Stack(
                      children: [
                          Image.asset(
                            "assets/image/image_Recomended.png",
                            width: MediaQuery.of(context).size.width,
                          ),
                        Image.asset(
                          "assets/image/icon_add.png",
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
