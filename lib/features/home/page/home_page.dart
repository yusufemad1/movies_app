import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home/widget/home_widget.dart';
import 'package:movies_app/features/home/widget/recomended_widget.dart';
import 'package:movies_app/features/home/widget/releases_widget.dart';

class HomePage extends StatelessWidget {
  static String routeName = "HomePage";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HomeWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 18,bottom: 10),
          child: ReleasesWidget(),
        ),
        RecomendedWidget(name: "Recomended",),
      ],
    ));
  }
}
