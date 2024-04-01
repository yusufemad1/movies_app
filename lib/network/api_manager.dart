import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';
class Apimanger {
  static const _popular =
      "https://${Constants.basUrl}/3/movie/popular?api_key=${Constants.apiKey}";
  static const _newReleases=
      "https://${Constants.basUrl}/3/movie/upcoming?api_key=${Constants.apiKey}";
  static const _recomended=
      "https://${Constants.basUrl}/3/movie/top_rated?api_key=${Constants.apiKey}";
  static final _MoreLikeThis=
      "https://${Constants.basUrl}/3/movie/28/similar?api_key=${Constants.apiKey}";

  Future<List<Popular>>getPopular() async {
    final response= await http.get(Uri.parse(_popular),);
    if(response.statusCode==200){
      final decodedData= json.decode(response.body)['results']as List;
      print(decodedData);
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    }else{
      throw Exception("somthing happened");
    }

  }

  Future<List<Popular>>getNewReleases() async {
    final response= await http.get(Uri.parse(_newReleases),);
    if(response.statusCode==200){
      final decodedData= json.decode(response.body)['results']as List;
      print(decodedData);
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    }else{
      throw Exception("somthing happened");
    }

  }

  Future<List<Popular>>getReconended() async {
    final response= await http.get(Uri.parse(_recomended),);
    if(response.statusCode==200){
      final decodedData= json.decode(response.body)['results']as List;
      print(decodedData);
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    }else{
      throw Exception("somthing happened");
    }
  }
  Future<List<Popular>>getMoreLikeThis() async {
    final response= await http.get(Uri.parse(_MoreLikeThis),);
    if(response.statusCode==200){
      final decodedData= json.decode(response.body)['results']as List;
      print(decodedData);
      return decodedData.map((popular) => Popular.FromJson(popular)).toList();
    }else{
      throw Exception("somthing happened");
    }
  }
}
