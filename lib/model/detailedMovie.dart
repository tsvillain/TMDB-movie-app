import 'package:tmdb/model/cast.dart';
import 'package:tmdb/model/crew.dart';

class DetailedMovie {
  String id;
  String rating;
  String overview;
  String releaseYear;
  String bgURL;
  String posterURL;
  String title;
  List<String> category;
  int budget;
  int revenue;
  int runtime;
  List<Crew> crew;
  List<Cast> cast;

  DetailedMovie({
    this.id,
    this.rating,
    this.overview,
    this.releaseYear,
    this.bgURL,
    this.posterURL,
    this.title,
    this.category,
    this.budget,
    this.revenue,
    this.runtime,
    this.crew,
    this.cast,
  });

  DetailedMovie.fromMap(Map<String, dynamic> map) {
    this.id = map["id"].toString();
    this.rating = map['vote_average'].toString();
    this.overview = map['overview'];
    this.releaseYear = map['release_date'].toString().substring(0, 4);
    this.bgURL = map['backdrop_path'];
    this.posterURL = map['poster_path'];
    this.title = map['title'];
    this.category = List<String>();
    for (var id in map['genres']) {
      this.category.add(id['name']);
    }
    this.budget = map['budget'];
    this.revenue = map['revenue'];
    this.runtime = map['runtime'];
    this.cast = List<Cast>();
    for (var cast in map['credits']['cast']) {
      this.cast.add(Cast.fromMap(cast));
    }
    this.crew = List<Crew>();
    for (var crew in map['credits']['crew']) {
      this.crew.add(Crew.fromMap(crew));
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
      "budget": this.budget,
      "revenue": this.revenue,
      "runtime": this.runtime,
      "crew": this.crew,
      "cast": this.cast,
    };
  }
}
