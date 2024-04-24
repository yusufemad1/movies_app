import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';

import '../../watch_list/widgets/boxes.dart';
import '../../watch_list/widgets/db.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({super.key, required this.popular});

  final Popular popular;

  @override
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInDown(
          delay: Duration(milliseconds: 400),
          child: Stack(
            children: [
              Image.network(
                '${Constants.urlimage}${widget.popular.background}',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle_fill_rounded,
                      color: Colors.white,
                      size: 80,
                    )),
              ),
            ],
          ),
        ),
        FadeInRight(
          delay: Duration(milliseconds: 400),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 7, top: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.popular.title,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
        FadeInRight(
          delay: Duration(milliseconds: 400),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.popular.date,
                style: TextStyle(fontSize: 10, color: Color(0xffB5B4B4)),
              ),
            ),
          ),
        ),
        FadeInRight(
          delay: Duration(milliseconds: 700),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 200,
                    width: 130,
                    child: Stack(
                      children: [
                        Image.network(
                          '${Constants.urlimage}${widget.popular.poster}',
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              boxDb.put(
                                  'key_${widget.popular.id}',
                                  db(
                                    photo: widget.popular.background,
                                    name: widget.popular.title,
                                    date: widget.popular.date,
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            width: 65,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Action",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Container(
                            decoration: BoxDecoration(
// color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            width: 65,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Action",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Container(
                            decoration: BoxDecoration(
// color: Colors.red,
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(width: 1, color: Colors.grey),
                            ),
                            width: 65,
                            height: 25,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Action",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Container(
                      decoration: BoxDecoration(
// color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      width: 65,
                      height: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text("Action",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Container(
                      width: 210,
                      child: Text(
                        widget.popular.description,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/image/star-2.png"),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          widget.popular.rate.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
