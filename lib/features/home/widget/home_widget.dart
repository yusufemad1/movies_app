import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home/page/movie_details.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       Navigator.pushNamed(context, MovieDetails.routeNmae);
      },
      child: CarouselSlider(
        options: CarouselOptions(
            height: MediaQuery.of(context).size.height / 3,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 6)),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Image.asset("assets/image/Image.png"),
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
                          Image.asset(
                            "assets/image/Image (1).png",
                            width: 130,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/image/icon_add.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, bottom: 40),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Dora and the lost city of gold",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 20),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "2019  PG-13  2h 7m",
                          style:
                              TextStyle(fontSize: 10, color: Color(0xffB5B4B4)),
                        )),
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
