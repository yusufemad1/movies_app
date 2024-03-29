import 'package:flutter/material.dart';

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            children: [
              Stack(alignment: AlignmentDirectional.topStart, children: [
                Image(
                  image: AssetImage('assets/image/photo.png'),
                ),
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
                  Text(
                    'Alita Battle Angel',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2019',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Rosa Salazar, Christoph Waltz',
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
