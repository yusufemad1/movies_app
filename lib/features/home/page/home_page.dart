import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/features/home/widget/home_widget.dart';
import 'package:movies_app/features/home/widget/recomended_widget.dart';
import 'package:movies_app/features/home/widget/releases_widget.dart';
import 'package:movies_app/models/popular.dart';
import 'package:movies_app/network/api_manager.dart';

class HomePage extends StatefulWidget {
  static String routeName = "HomePage";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Popular>> PopularMovies;

  @override
  void initState() {
    super.initState();
    PopularMovies = Apimanger().getPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          child: FutureBuilder(
            future: PopularMovies,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }else if(snapshot.hasData){
                // final data =snapshot.data;
                return  HomeWidget(snapshot: snapshot,);
              }else{
                return Center(child: CircularProgressIndicator(),);
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, bottom: 10),
          child: ReleasesWidget(),
        ),
        RecomendedWidget(
          name: "Recomended",
        ),
      ],
    ));
  }
}
