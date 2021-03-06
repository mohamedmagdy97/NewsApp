import 'dart:convert';

import 'package:news_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];
  String url =
      'https://newsapi.org/v2/top-headlines?country=eg&apiKey=a93105f5c105482da2c7c1f57a3472b7';

  Future<void> getNews() async {
    try {
      var response = await http.get(Uri.parse(url));
      print('>>>>response>>>>>>${response}');

      var jsonData = jsonDecode(response.body);
      print('>>>>>status>>>>>${jsonData['status']}');

      if (jsonData['status'] == 'ok') {
        jsonData['articles'].forEach((element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              // publishedAt: element['publishedAt'],
              content: element['content'],
            );
            print('>>>>>>>>>>${jsonData['articles']}');
            news.add(articleModel);
          }
        });
      }
    } catch (e) {
      print('==========$e');
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getNews(String category) async {
    try {
      String url =
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=a93105f5c105482da2c7c1f57a3472b7';

      var response = await http.get(Uri.parse(url));
      var jsonData = jsonDecode(response.body);
      print('??>>>${jsonData['status']}');
      if (jsonData['status'] == 'ok') {
        jsonData['articles'].forEach((element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            ArticleModel articleModel = ArticleModel(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              // publishedAt: element['publishedAt'],
              content: element['content'],
            );

            news.add(articleModel);
          }
        });
      }
    } catch (e) {
      print('==========$e');
    }
  }
}
