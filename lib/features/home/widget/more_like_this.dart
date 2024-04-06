import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';
import 'package:movies_app/network/api_manager.dart';

class MoreLikeThis extends StatefulWidget {
  MoreLikeThis({super.key, required this.snapshot,required this.popular});
  final AsyncSnapshot snapshot;
  final Popular popular;

  @override
  State<MoreLikeThis> createState() => _MoreLikeThisState();
}

class _MoreLikeThisState extends State<MoreLikeThis> {
  Apimanger apimanger = Apimanger();

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
                  'More Like This' ,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            CarouselSlider.builder(
                itemCount: 10,
                options: CarouselOptions(
                    viewportFraction: 0.3,
                    initialPage: 1,
                    enableInfiniteScroll: false,
                    enlargeFactor: 1,
                    height: 190),
                itemBuilder:  (context, itemIndex, pageViewIndex)  {
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
                            Image.network(
                        '${Constants.urlimage}${Apimanger.morlist[itemIndex]['poster_path']}',
                              width: MediaQuery.of(context).size.width,height: 130,
                            ),
                            Image.asset(
                              "assets/image/icon_add.png",
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
                                          '${Apimanger.morlist[itemIndex]["vote_average"].toString()}',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 10),
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
                                  '${Apimanger.morlist[itemIndex]["title"].toString()}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Padding(
                                padding:
                                const EdgeInsets.only(bottom: 10, left: 5),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '${Apimanger.morlist[itemIndex]["release_date"].toString()}',
                                    style: TextStyle(
                                        color: Color(0xffB5B4B4), fontSize: 8),
                                  ),
                                ),
                              ),
                            ),
                          ],
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