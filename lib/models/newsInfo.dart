
// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);
import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {

  NewsModel({this.articulo,});

  List<Articulo> articulo;

  factory NewsModel.fromJson(List json) => NewsModel(
        articulo: List<Articulo>.from(
            json.map((x) => Articulo.fromJson(x))
            ),
      );
  Map<String, dynamic> toJson() => {
        "articulo": List<dynamic>.from(articulo.map((x) => x.toJson())),
      };
}

class Articulo {

  Articulo({this.userId, this.id, this.title, this.body,});

  int userId;
  int id;
  String title;
  String body;
  
  factory Articulo.fromJson(Map<String, dynamic> json) => Articulo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
  Map<String, dynamic> toJson() => {
        
       "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}



