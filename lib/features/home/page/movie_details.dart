import 'package:flutter/material.dart';
import 'package:movies_app/features/home/widget/details_widget.dart';
import 'package:movies_app/features/home/widget/recomended_widget.dart';

class MovieDetails extends StatelessWidget {
  static String routeNmae = "MovieDetails";

  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D1E1D),
        title: Text(
          "Dora and the lost city of gold",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsWidget(),
            RecomendedWidget(name: "More Like This",),
          ],
        ),
      ),
    );
  }
}
