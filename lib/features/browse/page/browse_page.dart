import 'package:flutter/material.dart';
import 'package:movies_app/features/browse/widgets/browse_widget.dart';

class BrowsePage extends StatelessWidget {
  static String routeName = "BrowsePage";

  const BrowsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Browse Category',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                ),
              ),
            ),
            BrowseWidget(),
            BrowseWidget(),
            BrowseWidget(),
            BrowseWidget(),
            BrowseWidget(),
            BrowseWidget(),
            BrowseWidget(),

          ],
        ),
      ),
    );
  }
}
