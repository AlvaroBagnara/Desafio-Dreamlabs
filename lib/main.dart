import 'package:dreamlabs_test/API/post_service.dart';
import 'package:dreamlabs_test/widgets/list_posts.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  List postsList =[];

  @override
  void initState() {
    super.initState();
    loadPosts();
  }

  loadPosts() async {
    final posts = await PostService().getPosts();
    setState(() {
      postsList = posts;
    });
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(       
        body: Container(
          child:
            ListPosts(
              posts: posts,
            )
        )
      ),
    );
  }
}