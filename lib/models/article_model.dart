class Article {
  String id;
  String title;
  String content;
  String imageAsset;
  String published;

  Article({this.id,this.title, this.content, this.imageAsset, this.published});

  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      imageAsset: json['imageAsset'],
      published: json['published'],
    );
  }
}