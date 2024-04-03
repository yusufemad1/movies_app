class Popular {
  String background;
  String poster;
  String title;
  String date;
  String description;
  double rate;
  // List id;

  Popular({
    required this.background,
    required this.poster,
    required this.title,
    required this.date,
    required this.description,
    required this.rate,
    // required this.id,
  });

  factory Popular.FromJson(Map<String, dynamic> json) {
    return Popular(
        background: json["backdrop_path"],
        poster: json["poster_path"],
        title: json["title"],
        date: json["release_date"],
        rate: json["vote_average"],
        description: json["overview"]
        // id: json["genre_ids"]
    );
  }
}

// {
// "adult": false,
// "backdrop_path": "/sR0SpCrXamlIkYMdfz83sFn5JS6.jpg",
// "genre_ids": [
// 28,
// 878,
// 12
// ],
// "id": 823464,
// "original_language": "en",
// "original_title": "Godzilla x Kong: The New Empire",
// "overview": "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
// "popularity": 4825.24,
// "poster_path": "/gmGK5Gw5CIGMPhOmTO0bNA9Q66c.jpg",
// "release_date": "2024-03-27",
// "title": "Godzilla x Kong: The New Empire",
// "video": false,
// "vote_average": 7.186,
// "vote_count": 188
// },
