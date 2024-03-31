import 'package:flutter/material.dart';

class BrowseWidget extends StatelessWidget {
  const BrowseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 35,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image(
                image: AssetImage('assets/image/Action.png'),
              ),
              Text(
                'Action',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image(
                image: AssetImage('assets/image/Action.png'),
              ),
              Text(
                'Action',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
