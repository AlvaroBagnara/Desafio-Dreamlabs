import 'package:dio/dio.dart';

List<Post> posts = [];

class PostService{

  final Dio _dio = Dio();
  
  Future<List<Post>> getPosts() async {
    final response = await _dio.get(
      "https://jsonplaceholder.typicode.com/posts"
    );

    if (response.statusCode == 200){

      final results = List<Map<String, dynamic>>.from(response.data); 
      List<Post> post = results.map((postData) => Post.fromMap(postData)).toList();
      posts.addAll(post);
      return posts;

    }else{

      throw Exception("Failed to Load.");
    } 
  }
}

class Post {
  String title;
  String body;

  Post({
    required this.title,
    required this.body,
    
  });

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      title: map['title'],
      body: map['body'],     
    );
  }



  @override
  String toString() => 'Movie(title: $title, body: $body)';
  
}