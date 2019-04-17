class Region {
  String id ="";
  String region;
  String capital;
  String districts;
  String area;
  String population;
  String zone;
  String poster;
  String webAddress;

  Region(
    {this.id,this.region,this.capital,this.districts,this.area,this.population,
    this.zone,this.poster,this.webAddress}
  );

  factory Region.fromJson(Map<String, dynamic> json){
    return Region(
      id: json['id'],
      region: json['region'],
      capital: json['capital'],
      districts: json['districts'],
      area: json['area'],
      population: json['population'],
      zone: json['zone'],
      poster: json['poster'],
      webAddress: json['webAddress']
    );
  }
  
}