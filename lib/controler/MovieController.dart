import 'package:get/get.dart';

import '../model/movie_model.dart';
import '../service/api_connecttor.dart';

class MovieController extends GetxController {
  final _api = BaseApiUrl();
  var movies = MovieModel();

  @override
  void onInit() {
    super.onInit();
    getTrendMovie();
  }

  void getTrendMovie() async {
    try {
      final response = await _api.getTrendingMovie();
      movies.results = response;
      update();
    } catch (e) {
      throw Exception("error $e");
    }
  }
}
