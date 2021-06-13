class News {
  String title;
  String author;
  String imageUrl;
  String description;
  String postedAt;

  News({this.title, this.author, this.imageUrl, this.description, this.postedAt});

  factory News.fromJson(Map<String, dynamic> data) => News(
    title: data['title'],
    author: data['author'],
    description: data['content'],
    imageUrl: data['urlToImage'],
    postedAt: data['publishedAt']
  );

    factory News.trending(Map<String, dynamic> data) => News(
    title: data['title'],
    author: data['author'],
    description: data['content'],
    imageUrl: data['urlToImage'],
    postedAt: data['publishedAt']
  );
}