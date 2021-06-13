import 'dart:convert';

import '../models/trending.dart';

import '../models/news.dart';
import 'package:http/http.dart' as http;
import '../shared.dart';

class NewsServices {
  static Future<List<News>> getNews({http.Client client}) async {
    String link = endPoint + apiKey;

    client ??= http.Client();

    var response = await http.get(link);
    if (response.statusCode != 200) {
      return [];
    }

    var data = jsonDecode(response.body);
    List<dynamic> result = (data as Map<String, dynamic>)['articles'];

    return result.map((item) => News.fromJson(item)).toList();
  }

  static Future<List<Trending>> getTrendingNews({http.Client client}) async {
    String link = endPointTrending + apiKey;

    client ??= http.Client();

    var response = await http.get(link);
    if (response.statusCode != 200) {
      return [];
    }

    var data = jsonDecode(response.body);
    List<dynamic> trendingNews = (data as Map<String, dynamic>)['articles'];

    return trendingNews.map((item) => Trending.fromJson(item)).toList();
  }
}
