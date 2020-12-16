import 'package:flutter/cupertino.dart';

class Movie {
  String name;
  String rating;
  String age;
  AssetImage imgURL;

  Movie({
    this.name,
    this.rating,
    this.age,
    this.imgURL,
  });

  Movie.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.rating = map['rating'];
    this.age = map['age'];
    this.imgURL = map['imgURL'];
  }

  toJson() {
    return {
      "name": this.name,
      "rating": this.rating,
      "age": this.age,
      "imgURL": this.imgURL,
    };
  }
}

List<Movie> movieList = [
  Movie(
    name: "Joker",
    age: "15+",
    rating: "8.6",
    imgURL: AssetImage('assets/img/joker1.jpg'),
  ),
  Movie(
    name: "Joker 2.O",
    age: "15+",
    rating: "7.6",
    imgURL: AssetImage('assets/img/joker2.jpg'),
  ),
  Movie(
    name: "Joker 3.O",
    age: "15+",
    rating: "3.4",
    imgURL: AssetImage('assets/img/joker3.jpg'),
  ),
  Movie(
    name: "Joker 4.O",
    age: "15+",
    rating: "9.6",
    imgURL: AssetImage('assets/img/joker4.jpg'),
  ),
  Movie(
    name: "Joker 5.O",
    age: "15+",
    rating: "10.0",
    imgURL: AssetImage('assets/img/bg.jpg'),
  ),
];
