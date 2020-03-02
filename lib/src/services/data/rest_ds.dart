import 'dart:convert';

import 'package:flutter_news/src/models/news_headlines.dart';
import 'package:flutter_news/src/utils/const.dart';
import 'package:http/http.dart' as http;

class NewsDataSource {

  Future<List<Articles>> getNewsHeadlines() async {

    final response = await http.get(Constants.BASE_URL + '/top-headlines?country=us&apiKey=${Constants.API_KEY}');
    final responseString = jsonDecode(response.body);
    print(responseString);
    if (response.statusCode == 200) {
      return NewsHeadlines.fromJson(responseString).articles;
    } else {
      throw Exception('Failed to load News Headlines');
    }
  }
}
