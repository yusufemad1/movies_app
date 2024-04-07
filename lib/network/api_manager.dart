import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';

class Apimanger {
  static List<Map<String, dynamic>> searchresult = [];
  static List<Map<String, dynamic>> morlist = [];
  static const _popular =
      "https://${Constants.basUrl}/3/movie/popular?api_key=${Constants.apiKey}";
  static const _newReleases =
      "https://${Constants.basUrl}/3/movie/upcoming?api_key=${Constants.apiKey}";
  static const _recomended =
      "https://${Constants.basUrl}/3/movie/top_rated?api_key=${Constants.apiKey}";
  static final _MoreLikeThis =
      "https://${Constants.basUrl}/3/movie/28/similar?api_key=${Constants.apiKey}";
  static final _Search = "https://${Constants.basUrl}/3/search/movie&query=";

  Future<List<Popular>> getPopular() async {
    final response = await http.get(
      Uri.parse(_popular),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    } else {
      throw Exception("somthing happened");
    }
  }

  Future<List<Popular>> getNewReleases() async {
    final response = await http.get(
      Uri.parse(_newReleases),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    } else {
      throw Exception("somthing happened");
    }
  }

  Future<List<Popular>> getReconended() async {
    final response = await http.get(
      Uri.parse(_recomended),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    } else {
      throw Exception("somthing happened");
    }
  }

  Future getMoreLikeThis(List id) async {
    String id1 = "${id.first},${id.lastOrNull}";
    final searchurl =
        "https://api.themoviedb.org/3/movie/$id1/similar?api_key=ab1f280e922b6b691e6dc48ebcc93693";
    final searchresponse = await http.get(Uri.parse(searchurl));
    if (searchresponse.statusCode == 200) {
      var tempdata = jsonDecode(searchresponse.body);
      var searchjson = tempdata['results'];
      for (var i = 0; i < searchjson.length; i++) {
        //only add value if all are present
        if (searchjson[i]['poster_path'] != null &&
            searchjson[i]['title'] != null &&
            searchjson[i]['release_date'] != null &&
            searchjson[i]['genre_ids'] != null &&
            searchjson[i]['vote_average'] != null) {
          morlist.add({
            'poster_path': searchjson[i]['poster_path'],
            'title': searchjson[i]['title'],
            'release_date': searchjson[i]['release_date'],
            'genre_ids': searchjson[i]['genre_ids'],
            'vote_average': searchjson[i]['vote_average'],
          });

          // searchresult = searchresult.toSet().toList();

          if (searchresult.length > 20) {
            searchresult.removeRange(20, searchresult.length);
          }
        } else {
          print('null value found');
        }
      }
    }
  }

  // Future<SearchModel>getSearch(String searchText) async {
  //   final response= await http.get(Uri.parse(_Search+"&query=$searchText"),headers:{
  //   'Authorization':
  //   "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhYjFmMjgwZTkyMmI2YjY5MWU2ZGM0OGViY2M5MzY5MyIsInN1YiI6IjY2MDlhZjI3YzE0NGRkMDE2M2Q2OTYxMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.fAJz81mGcuHBqISFI3EdlahRsSVheEEO-BDvauhzrgk"
  //   } ,
  //   );
  //   if(response.statusCode==200){
  //     log('Succes');
  //     final decodedData= json.decode(response.body)['results']as List;
  //     print(decodedData);
  //     return SearchModel.fromJson(jsonDecode(response.body));
  //   }
  //     throw Exception("somthing happened");
  // }

  Future<void> getSearch(textval) async {
    final searchurl =
        'https://api.themoviedb.org/3/search/multi?api_key=ab1f280e922b6b691e6dc48ebcc93693&query&query=$textval';
    final searchresponse = await http.get(Uri.parse(searchurl));
    if (searchresponse.statusCode == 200) {
      var tempdata = jsonDecode(searchresponse.body);
      var searchjson = tempdata['results'];
      for (var i = 0; i < searchjson.length; i++) {
        //only add value if all are present
        if (searchjson[i]['poster_path'] != null &&
            searchjson[i]['title'] != null &&
            searchjson[i]['release_date'] != null) {
          searchresult.add({
            'poster_path': searchjson[i]['poster_path'],
            'title': searchjson[i]['title'],
            'release_date': searchjson[i]['release_date'],
          });

          // searchresult = searchresult.toSet().toList();

          if (searchresult.length > 20) {
            searchresult.removeRange(20, searchresult.length);
          }
        } else {
          print('null value found');
        }
      }
    }
  }
}
