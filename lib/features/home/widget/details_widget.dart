import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/image/Image.png"),
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
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 7, top: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Dora and the lost city of gold",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "2019  PG-13  2h 7m",
              style: TextStyle(fontSize: 10, color: Color(0xffB5B4B4)),
            ),
          ),
        ),
        Row(
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
                      Image.asset(
                        "assets/image/Image (1).png",
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/image/icon_add.png",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
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
                Padding(
                  padding: const EdgeInsets.only(top:5,right: 135),
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
                  padding: const EdgeInsets.only(top: 20, left: 10,),
                  child: Text(
                    " Having spent most of her life\n exploring the jungle, nothing could\n prepare Dora for her most dangerous\n adventure yet — high school.\n",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 150),
                  child: Row(
                    children: [
                      Image.asset("assets/image/star-2.png"),
                      Text("7.7",style: TextStyle(color: Colors.white,fontSize: 17),)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
