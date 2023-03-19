import 'package:DoctorCom/Blog/models/article.dart';
import 'package:DoctorCom/Blog/secret.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class News {
  List<Article> news = [];

  Future<void> getNews() async {
    Uri url =
        "http://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=${apiKey}" as Uri;

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            id: element['id'],
            name: element['name'],
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element["url"],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
          );
          news.add(article);
        }
      });
    }
  }
}

class NewsForCategorie {
  List<Article> news = [];

  Future<void> getNewsForCategory(String category) async {
    /*String url = "http://newsapi.org/v2/everything?q=$category&apiKey=${apiKey}";*/
    Uri url =
        "http://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=${apiKey}" as Uri;

    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          Article article = Article(
            id: element['id'],
            name: element['name'],
            author: element['author'],
            title: element['title'],
            description: element['description'],
            url: element["url"],
            urlToImage: element['urlToImage'],
            publshedAt: DateTime.parse(element['publishedAt']),
            content: element["content"],
          );
          news.add(article);
        }
      });
    }
  }
}
