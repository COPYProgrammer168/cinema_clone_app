import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/movie_model.dart';

class BaseApiUrl {
  Future<List<Results>> getTrendingMovie() async {
    try {
      var url = Uri.parse("https://api.themoviedb.org/3/trending/movie/day?api_key=f45f79f6fe205e03979a2cd896717b0c");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)["results"];
        return List<Results>.from(data.map((e) => Results.fromJson(e)));
      } else {
        throw Exception("error no data ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("error $e");
    }
  }
}
