class Genre {
  int id;
  String category;

  Genre({this.id, this.category});

  toJson() {
    return {
      "id": this.id,
      "category": this.category,
    };
  }
}

List<Genre> genre = [
  Genre(id: 28, category: "Action"),
  Genre(id: 12, category: "Adventure"),
  Genre(id: 16, category: "Animation"),
  Genre(id: 35, category: "Comedy"),
  Genre(id: 80, category: "Crime"),
  Genre(id: 99, category: "Documentary"),
  Genre(id: 18, category: "Drama"),
  Genre(id: 10751, category: "Family"),
  Genre(id: 14, category: "Fantasy"),
  Genre(id: 36, category: "History"),
  Genre(id: 27, category: "Horror"),
  Genre(id: 10402, category: "Music"),
  Genre(id: 9648, category: "Mystery"),
  Genre(id: 10749, category: "Romance"),
  Genre(id: 878, category: "Science Fiction"),
  Genre(id: 10770, category: "TV Movie"),
  Genre(id: 53, category: "Thriller"),
  Genre(id: 10752, category: "War"),
  Genre(id: 37, category: "Western"),
];
