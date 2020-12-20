class Cast {
  String name;
  String profileURL;
  String character;

  Cast({
    this.name,
    this.profileURL,
    this.character,
  });

  toJson() {
    return {
      "name": this.name,
      "profileURL": this.profileURL,
      "character": this.character,
    };
  }

  Cast.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.profileURL = map['profile_path'];
    this.character = map['character'];
  }
}
