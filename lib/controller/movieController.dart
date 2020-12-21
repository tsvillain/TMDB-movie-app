import 'package:get/state_manager.dart';
import 'package:tmdb/model/detailedMovieModel.dart';
import 'package:tmdb/model/trendingMovieModel.dart';
import 'package:tmdb/services/apiService.dart';

class MovieController extends GetxController {
  var isLoading = true.obs;
  List<TrendingMovie> trendingMovies = List<TrendingMovie>().obs;
  var movie = DetailedMovie(
    bgURL: null,
    category: null,
    id: null,
    overview: null,
    posterURL: null,
    rating: null,
    releaseYear: null,
    title: null,
    budget: null,
    cast: null,
    crew: null,
    revenue: null,
    runtime: null,
  ).obs;
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
    var _movies = await APIService.getTrendingMovie();
    if (_movies != null) {
      trendingMovies = _movies;
      selectedMovies(0);
    }
    isLoading(false);
  }

  void getMovieDetail(String id) async {
    isLoading(true);
    var _movie = await APIService.getMovieDetail(id);
    if (_movie != null) {
      movie(_movie);
    }
    isLoading(false);
  }
}
