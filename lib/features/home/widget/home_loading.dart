import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoading extends StatelessWidget {
  const HomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 240,
            width: 380,
            decoration: BoxDecoration(
              color: Color(0xffC6C6C6),
            ),
          ),
        ),
      ),
    );
  }
}
