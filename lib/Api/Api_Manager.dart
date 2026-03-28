import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news/Api/Api_Constants.dart';
import 'package:news/Api/end_points.dart';
import 'package:news/Model/Source_Respon.dart';

class ApiManager {
  /*  https://newsapi.org/v2/top-headlines/sources?apiKey=20adf6b9f2cf4be9961c33d604ef4fcf */
  static Future<SourceRespon> getSources() async {
    // http response
    Uri url = Uri.https(
        ApiConstants.baseUrl, // اسم ال server
        EndPoints.sourceApi,
        { // query parameters as map
          'apiKey': ApiConstants.apiKey});
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
}