import 'package:flutter/material.dart';

class TweetLikeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.yellow, width: 2.0)),
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextFormField(
              autofocus: true,
            )),
            ElevatedButton(onPressed: () {}, child: Text("send"))
          ],
        ));
  }
}
