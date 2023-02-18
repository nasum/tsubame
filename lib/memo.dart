import 'package:flutter/material.dart';

class TweetLikeMemo extends StatelessWidget {
  String contents = "";

  TweetLikeMemo(String contents) {
    this.contents = contents;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[Expanded(child: Text(contents))],
    ));
  }
}
