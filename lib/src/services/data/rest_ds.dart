import 'dart:convert';

import 'package:flutter_news/src/models/news_headlines.dart';
import 'package:flutter_news/src/utils/const.dart';
import 'package:http/http.dart' as http;

class NewsDataSource {

  Future<List<Articles>> getNewsHeadlines(String category) async {
    String newsUrl = Constants.BASE_URL + '/top-headlines?country=ng&category=$category&apiKey=${Constants.API_KEY}';

    final response = await http.get(newsUrl);
    final responseString = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return NewsHeadlines.fromJson(responseString).articles;
    } else {
      throw Exception('Failed to load News Headlines');
    }
  }
}
