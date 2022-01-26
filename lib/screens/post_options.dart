import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Post"),
      ),
      body: Text(
          "post options page. should basically be a column of buttons, Poll, Picture/Video, Rank. message before post is always available"),
    );
  }
}
