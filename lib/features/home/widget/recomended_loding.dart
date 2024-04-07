import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RecomendedLoading extends StatelessWidget {
  const RecomendedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              top: 20,
              bottom: 20,
            ),
            child: Container(
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xffC6C6C6),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffC6C6C6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffC6C6C6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffC6C6C6),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 3),
                      child: Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffC6C6C6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
