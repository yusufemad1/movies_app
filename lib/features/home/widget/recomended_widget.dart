import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class RecomendedWidget extends StatelessWidget {
  String name;
   RecomendedWidget({super.key,required this.name,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: MediaQuery.of(context).size.height/3.2,
        color: Color(0xff282A28),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20, bottom: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  name,
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
                  height: 190),
              items: [1, 2, 3, 4, 5, 7, 7, 8, 9].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      decoration: BoxDecoration(color: Color(0xff343534)),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/image/image_Recomended.png",
                            width: MediaQuery.of(context).size.width,
                          ),
                          Image.asset(
                            "assets/image/icon_add.png",
                          ),
                          Row(
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
                                      "7.7",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 22, left: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Deadpool 2',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10, left: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '2018  R  1h 59m',
                                style: TextStyle(
                                    color: Color(0xffB5B4B4), fontSize: 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
