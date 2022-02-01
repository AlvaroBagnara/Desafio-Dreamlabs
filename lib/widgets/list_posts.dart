import 'package:dreamlabs_test/widgets/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:strings/strings.dart';

class ListPosts extends StatelessWidget {
  ListPosts({Key? key, required this.posts});

  final List posts;
  
  static String stringCapitalize(String? text) {
    if (text != null) {
      return capitalize(text);
    }

    return text ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          padding: EdgeInsets.only(top: 5,bottom: 5),
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PostScreen(post: posts[index])
                      )
                    );
                  },
                  child: Container(    
                    height: 116,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
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
                        Text(stringCapitalize(posts[index].title.toString()),style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,fontFamily: "Ubuntu Mono"),textAlign: TextAlign.center,),
                        Divider(height: 1,color: Colors.black,),
                        Expanded(child: Text(
                          posts[index].body.toString(),
                          textAlign: TextAlign.left,
                          )
                        )
                    ],),
                  ),
                );
            }),
        )
      ],
    );
  }
}