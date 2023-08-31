import 'package:http/http.dart' as http;

import '../models/add_post.dart';
import '../models/get_all.dart';
import '../models/get_comments.dart';
import '../models/get_single.dart';
import '../models/update_post.dart';

class GetAllPostsApi{
  Future apiGetall() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var jsonResponse = getAllFromJson(response.body);
      return jsonResponse;
    }
  }
}

class GetSinglePostsApi{
  Future apiGetSingle(int postId) async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/postId"));

    if (response.statusCode == 200) {
      var jsonResponse = getSingleFromJson(response.body);
      return jsonResponse;
    }
  }
}

class GetCommentsApi{
  Future apiGetComments(int postId) async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/postId/comments"));

    if (response.statusCode == 200) {
      var jsonResponse = getCommentsFromJson(response.body);
      return jsonResponse;
    }
  }
}

class AddPostApi{
  Future apiAddPost() async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var jsonResponse = addPostFromJson(response.body);
      return jsonResponse;
    }
  }
}

class UpdatePostApi{
  Future apiUpdatePost(int postId) async {
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/postId"));

    if (response.statusCode == 200) {
      var jsonResponse = updatePostFromJson(response.body);
      return jsonResponse;
    }
  }
}