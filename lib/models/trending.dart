class Trending {
  String title;
  String author;
  String imageUrl;
  String description;
  String postedAt;

  Trending({this.title, this.author, this.imageUrl, this.description, this.postedAt});

  factory Trending.fromJson(Map<String, dynamic> object) => Trending(
    title: object['title'],
    author: object['author'],
    imageUrl: object['urlToImage'],
    description: object['content'],
    postedAt: object['publishedAt']
  );
}
