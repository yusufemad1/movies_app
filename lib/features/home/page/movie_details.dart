import 'package:flutter/material.dart';
import 'package:movies_app/features/home/widget/details_widget.dart';
import 'package:movies_app/features/home/widget/more_like_this.dart';
import 'package:movies_app/features/home/widget/recomended_widget.dart';
import 'package:movies_app/models/popular.dart';
import 'package:movies_app/network/api_manager.dart';

import '../widget/recomended_loding.dart';

class MovieDetails extends StatefulWidget {
  static String routeNmae = "MovieDetails";
  final Popular popular;

  const MovieDetails({super.key, required this.popular,});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  late Future<void>morLikeThis;
  void initState() {
    super.initState();
    morLikeThis = Apimanger().getMoreLikeThis(widget.popular.id);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D1E1D),
        title: Text(
          widget.popular.title,
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsWidget(popular: widget.popular,),
            SizedBox(
              child:FutureBuilder(
                future: morLikeThis,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }else if(snapshot.connectionState == ConnectionState.done){
                    // final data =snapshot.data;
                    return  MoreLikeThis(snapshot:snapshot,popular: widget.popular,);
                  }else{
                    return RecomendedLoading();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
