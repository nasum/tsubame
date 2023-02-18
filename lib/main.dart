import 'package:flutter/material.dart';
import './form.dart';
import './memo.dart';

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

class TweetLikePage extends StatefulWidget {
  const TweetLikePage({super.key, required this.title});
  final String title;

  @override
  State<TweetLikePage> createState() => _TweetLikePageState();
}

class _TweetLikePageState extends State<TweetLikePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Row(children: [
                    Expanded(
                        child: Column(children: [
                      TweetLikeMemo('memo'),
                      TweetLikeMemo('memo2'),
                    ]))
                  ]),
                ),
              ),
              TweetLikeForm()
            ],
          ),
        ));
  }
}
