class ArticleModel {
  String id;
  String title;
  String content;
  String imageAsset;
  String published;

  ArticleModel({this.id,this.title, this.content, this.imageAsset, this.published});

  factory ArticleModel.fromJson(Map<String, dynamic> json){
    return ArticleModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      imageAsset: json['imageAsset'],
      published: json['published'],
    );
  }
}