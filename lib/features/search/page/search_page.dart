import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/network/api_manager.dart';

class SearchPage extends StatefulWidget {
  static String routeName = "SearchPage";

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchtext = TextEditingController();
  Apimanger apimanger = Apimanger();
  bool showlist = false;
  var val1;

  // SearchModel? searchModel;

  void search(String query) {
    apimanger.getSearch(query).then((results) {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    searchtext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoSearchTextField(
                padding: EdgeInsets.all(15),
                itemColor: Colors.white,
                style: TextStyle(color: Colors.white),
                controller: searchtext,
                decoration: BoxDecoration(
                    color: Color(0xFF514F4F),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.white70, width: 1)),
                onSubmitted: (value) {
                  Apimanger.searchresult.clear();
                  setState(() {
                    val1 = value;
                    FocusManager.instance.primaryFocus?.unfocus();
                  });
                },
                onChanged: (value) {
                  Apimanger.searchresult.clear();

                  setState(() {
                    val1 = value;
                  });
                },
              ),
            ),
            searchtext.text.length > 0
                ? FutureBuilder(
                    future: apimanger.getSearch(val1),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: Apimanger.searchresult.length,
                            scrollDirection: Axis.vertical,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  height: 90,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(20, 20, 20, 1),
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 1, color: Colors.grey),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, bottom: 10),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://image.tmdb.org/t/p/w500${Apimanger.searchresult[index]['poster_path']}'),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15,top: 15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 170,
                                              child: Text(
                                                Apimanger.searchresult[index]
                                                ['title'],
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              Apimanger.searchresult[index]
                                              ['release_date'],
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.amber,
                          ),
                        );
                      }
                    },
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

// decoration: InputDecoration(
//   fillColor: Color(0xFF514F4F),
//   filled: true,
//   contentPadding:
//       EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//   hintText: "Search",
//   hintStyle: TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w400,
//     color: Color(0xffC6C6C6),
//   ),
//   prefixIcon: ImageIcon(
//     AssetImage(
//       'assets/image/search_icon.png',
//     ),
//     color: Colors.white,
//   ),
//   enabledBorder: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(25),
//     borderSide: const BorderSide(
//       color: Color(0xffC6C6C6),
//     ),
//   ),
//   focusedBorder: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(25),
//     borderSide: BorderSide(
//       color: Color(0xffC6C6C6),
//     ),
//   ),
// ),
