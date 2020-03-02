class NewsHeadlines  {
  String status;
  List<Articles> articles;

  NewsHeadlines({this.status, this.articles});

  NewsHeadlines.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['articles'] != null) {
      articles = new List<Articles>();
      json['articles'].forEach((v) {
        articles.add(new Articles.fromJson(v));
      });
    }
  }

}

class Articles {
  String name;
  String author;
  String title;
  String description;
  String url;
  String publishedAt;
  String content;
  String image;

  Articles(
      {this.name,
        this.author,
        this.title,
        this.url,
        this.publishedAt,
        this.description,
        this.content,
        this.image
      });

  Articles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    author = json['author'];
    url = json['url'];
    publishedAt = json['publishedAt'];
    description = json['description'];
    content = json['content'];
    image = json['urlToImage'];
  }
}