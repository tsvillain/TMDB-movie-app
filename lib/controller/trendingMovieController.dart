import 'package:get/state_manager.dart';
import 'package:tmdb/model/trendingMovieModel.dart';
import 'package:tmdb/services/apiService.dart';

class TrendingMovieController extends GetxController {
  var isLoading = true.obs;
  List<TrendingMovie> trendingMovies = List<TrendingMovie>().obs;
  var selectedMovie = TrendingMovie(
          bgURL: null,
          category: null,
          id: null,
          overview: null,
          posterURL: null,
          rating: null,
          releaseYear: null,
          title: null)
      .obs;

  @override
  void onInit() {
    getTrendingMovies();
    super.onInit();
  }

  void selectedMovies(int index) {
    selectedMovie(trendingMovies[index]);
  }

  void getTrendingMovies() async {
    isLoading(true);
    var movies = await APIService.getTrendingMovie();
    if (movies != null) {
      trendingMovies = movies;
      selectedMovies(0);
    }
    isLoading(false);
  }
}
