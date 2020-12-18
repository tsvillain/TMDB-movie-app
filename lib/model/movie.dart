import 'package:tmdb/model/generes.dart';

class Movie {
  String rating;
  String overview;
  String releaseYear;
  String bgURL;
  String posterURL;
  String title;
  String id;
  List<Genre> category;

  Movie({
    this.id,
    this.rating,
    this.overview,
    this.releaseYear,
    this.bgURL,
    this.posterURL,
    this.title,
    this.category,
  });

  Movie.fromMap(Map<String, dynamic> map) {
    this.id = map["id"].toString();
    this.rating = map['vote_average'].toString();
    this.overview = map['overview'];
    this.releaseYear = map['release_date'].toString().substring(0, 4);
    this.bgURL = map['backdrop_path'];
    this.posterURL = map['poster_path'];
    this.title = map['title'];
    this.category = List<Genre>();
    for (var id in map['genre_ids']) {
      for (var cat in genre) {
        if (cat.id == id) {
          this.category.add(cat);
        }
      }
    }
  }

  toJson() {
    return {
      "id": this.id,
      "rating": this.rating,
      "overview": this.overview,
      "releaseDate": this.releaseYear,
      "bgURL": this.bgURL,
      "posterURL": this.posterURL,
      "title": this.title,
      "category": this.category,
    };
  }
}
