class ArticleModel {
  String id;
  String title;
  String content;
  String imageAsset;
  String datePublished;

  ArticleModel({this.id,this.title, this.content, this.imageAsset, this.datePublished});

  factory ArticleModel.fromJson(Map<String, dynamic> json){
    return ArticleModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      imageAsset: json['imageAsset'],
      datePublished: json['area'],
    );
  }
}