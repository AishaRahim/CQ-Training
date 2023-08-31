import 'package:http/http.dart' as http;

import '../model/book_model.dart';
import '../model/bookbyid_model.dart';


class ApiBook{
  Future apiService() async {
    http.Response response =
        await http.get(Uri.parse("https://simple-books-api.glitch.me/books?type=fiction&limit=20"));

    if (response.statusCode == 200) {
      var jsonResponse = bookFromJson(response.body);
      return jsonResponse;
    }
  }
}

class ApiBookDetail{
  Future apiDetail(int bookId) async {
    http.Response response =
        await http.get(Uri.parse("https://simple-books-api.glitch.me/books/$bookId"));
        print(response.statusCode);

    if (response.statusCode == 200) {
      var jsonResponse = bookbyIdFromJson(response.body);
      return jsonResponse;
    }
  }
}








