class Crew {
  String name;
  String profileURL;
  String job;

  Crew({
    this.name,
    this.profileURL,
    this.job,
  });

  toJson() {
    return {
      "name": this.name,
      "profileURL": this.profileURL,
      "job": this.job,
    };
  }

  Crew.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.profileURL = map['profile_path'];
    this.job = map['job'];
  }
}
