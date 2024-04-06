import 'package:flutter/material.dart';

import '../../../core/config/constants.dart';

class WatchListWidget extends StatelessWidget {
  String image;
  String name;
  String date;

  WatchListWidget(
      {super.key, required this.image, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            children: [
              Stack(alignment: AlignmentDirectional.topStart, children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context)
                      .size
                      .width *
                      0.230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('${Constants.urlimage}${image}'),
                          fit: BoxFit.cover)),
                ),
                // Image.network('${Constants.urlimage}${image}'),
                ImageIcon(
                  AssetImage('assets/image/Icon awesome-bookmark.png'),
                  color: Color(0xFFFFBB3B),
                ),
                ImageIcon(
                  AssetImage('assets/image/Icon awesome-check.png'),
                  color: Colors.white,
                ),
              ]),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 160,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: const Divider(
            thickness: 1,
            color: Color(0xFF707070),
          ),
        ),
      ],
    );
  }
}
