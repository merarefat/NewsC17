import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news/Api/Api_Constants.dart';
import 'package:news/Api/end_points.dart';
import 'package:news/Model/Source_Respon.dart';
import 'package:news/Model/news_response.dart';

class ApiManager {
  /*  https://newsapi.org/v2/top-headlines/sources?apiKey=20adf6b9f2cf4be9961c33d604ef4fcf */
  static Future<SourceRespon> getSources(String categoryId) async {
    // http response
    Uri url = Uri.https(
        ApiConstants.baseUrl, // اسم ال server
        EndPoints.sourceApi,
        { // query parameters as map
          'apiKey': ApiConstants.apiKey,
          'category': categoryId
        });
    Response response = await http.get(url);
    // SourceRespon.fromJson(jsonDecode(response.body));
    try {
      var responseBody = response.body; //String
      // string => json
      dynamic json = jsonDecode(responseBody); //json
      // json => object
      return SourceRespon.fromJson(json); //object
    } catch (e) {
      rethrow;
    }

  }

  /* https://newsapi.org/?q=apiKey=20adf6b9f2cf4be9961c33d604ef4fcf  */

  static Future<NewsResponse> getNewsBySourcesId(String sourceId,
      int page) async {
    Uri url = Uri.https(
        ApiConstants.baseUrl,
        EndPoints.newsApi,
        {
          'apiKey': ApiConstants.apiKey,
          'sources': sourceId,
          // 'page': '$page',
          // 'pageSize': '10',
        });

    try {
      Response response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return NewsResponse.fromJson(json);
    }
    catch (e) {
      rethrow;
    }
  }


  static Future<NewsResponse> searchNews(String query) async {
    Uri url = Uri.https(
        ApiConstants.baseUrl,
        EndPoints.newsApi,
        {
          'apiKey': ApiConstants.apiKey,
          'q': query,
        });

    try {
      Response response = await http.get(url);
      var responseBody = response.body;
      var json = jsonDecode(responseBody);
      return NewsResponse.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }
}