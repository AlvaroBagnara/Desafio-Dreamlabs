import 'package:flutter/material.dart';
import 'package:strings/strings.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key, required this.post}) : super(key: key);

  final dynamic post;

  static String stringCapitalize(String? text) {
    if (text != null) {
      return capitalize(text);
    }

    return text ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(110, 255, 135, 50),
              boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(3, 3), 
                  ),
                ],
            ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(stringCapitalize(post.title.toString()),style: TextStyle(
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