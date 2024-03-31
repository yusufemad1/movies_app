import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movies_app/core/config/constants.dart';
import 'package:movies_app/models/popular.dart';

class Apimanger {
  static const _popular =
      "https://${Constants.basUrl}/3/movie/popular?api_key=${Constants.apiKey}";

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
}
