import 'package:dreamlabs_test/widgets/post_screen.dart';
import 'package:flutter/material.dart';

class ListPosts extends StatelessWidget {
  const ListPosts({Key? key, required this.posts}) : super(key: key);

  final List posts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color.fromRGBO(110, 255, 135, 50),
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
                      color: Colors.green
                    ),
                    child: Column(
                      children: [
                        Text(posts[index].title.toString(),style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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