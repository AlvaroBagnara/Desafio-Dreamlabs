import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, required this.post}) : super(key: key);

  final dynamic post;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(110, 255, 135, 50),
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green
            ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(post.title.toString(),style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Divider(height: 1,color: Colors.black),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  post.body.toString(),style: TextStyle(
                    fontSize: 24,
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}