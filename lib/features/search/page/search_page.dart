import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static String routeName = "SearchPage";

  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xFF514F4F),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC6C6C6),
                ),
                prefixIcon: ImageIcon(
                  AssetImage(
                    'assets/image/search_icon.png',
                  ),
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Color(0xffC6C6C6),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Color(0xffC6C6C6),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/image/Icon_no_search.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No movies found',
                    style: TextStyle(
                      color: Color(0xffC6C6C6),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
