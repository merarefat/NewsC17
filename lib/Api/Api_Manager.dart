import 'package:http/http.dart' as http;
import 'package:news/Api/Api_Constants.dart';

class ApiManager {
  /*  https://newsapi.org/v2/top-headlines/sources?apiKey=20adf6b9f2cf4be9961c33d604ef4fcf */
  static void getSources() {
    Uri url = Uri.https(ApiConstants.baseUrl,);
    http.get(url);
  }
}