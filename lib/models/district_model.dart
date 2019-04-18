class District {
  String id;
  String regid;
  String district;
  String web;
  String poster;

  District({this.id,this.regid,this.district,this.poster,this.web});

  factory District.fromJson(Map<String, dynamic> json){
    return District(
      id: json['id'],
      regid: json['regid'],
      district: json['district'],
      poster: json['poster'],
      web: json['web']
    );
  }
  
}