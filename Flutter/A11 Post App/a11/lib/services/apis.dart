import 'package:http/http.dart' as http;

import '../models/add_post.dart';
import '../models/get_all.dart';
import '../models/get_comments.dart';
import '../models/get_single.dart';
import '../models/update_post.dart';

class ApiCall{
  Future apiGetall() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var jsonResponse = getAllFromJson(response.body);
      return jsonResponse;
    }
  }

  Future apiGetSingle(int postId) async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/$postId"));

    if (response.statusCode == 200) {
      var jsonResponse = getSingleFromJson(response.body);
      return jsonResponse;
    }
  }

  Future apiGetComments(int postId) async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/$postId/comments"));
        // print(response.statusCode);

    if (response.statusCode == 200) {
      var jsonResponse = getCommentsFromJson(response.body);
      return jsonResponse;
    }
  }

  Future apiAddPost(String userID,String title,String body) async {
    http.Response response =
        await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: {
          "userId": userID,
          "title": title,
          "body": body,
        });
        print(response.statusCode);

    if (response.statusCode == 200) {
      var jsonResponse = addPostFromJson(response.body);
      return jsonResponse;
    }
  }

  Future apiUpdatePost(String postId,String title,String body) async {
    http.Response response =
        await http.put(Uri.parse("https://jsonplaceholder.typicode.com/posts/$postId"),
        body: 
          {
            "id": postId,
            "title": title,
            "body": body,
          }
        );
        print(response.statusCode);


    if (response.statusCode == 200) {
      var jsonResponse = updatePostFromJson(response.body);
      return jsonResponse;
    }
  }

}
