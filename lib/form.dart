import 'package:flutter/material.dart';

@immutable
class TweetLikeForm extends StatelessWidget {
  const TweetLikeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(color: Color.fromARGB(255, 189, 189, 189)))),
        child: Row(
          children: <Widget>[
            Expanded(
                child: TextFormField(
              autofocus: true,
            )),
            ElevatedButton(onPressed: () {}, child: const Text("send"))
          ],
        ));
  }
}
