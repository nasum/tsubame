import 'package:flutter/material.dart';
import './tweet_like_page.dart';

void main() {
  runApp(const Tsubame());
}

class Tsubame extends StatelessWidget {
  const Tsubame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TweetLikePage(title: 'Tsubame Editor'),
    );
  }
}
