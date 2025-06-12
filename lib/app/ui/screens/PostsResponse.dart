import 'package:Bold/app/ui/screens/Post.dart';

class PostsResponse {
  List<Post> posts;

  PostsResponse({required this.posts});

  factory PostsResponse.fromJson(Map<String, dynamic> map) =>
      PostsResponse(posts: map[""]);
}
