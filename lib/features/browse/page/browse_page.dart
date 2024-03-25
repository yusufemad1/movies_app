import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  static String routeName = "BrowsePage";

  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Browse Category',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
