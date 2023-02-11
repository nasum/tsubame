import 'package:flutter/material.dart';

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
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 2.0)),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2.0)),
                  child: Row(children: [
                    Expanded(
                        child: Column(children: [
                      Text('memo'),
                      Text('memo2'),
                    ]))
                  ]),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 2.0)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: TextFormField(
                        autofocus: true,
                      )),
                      ElevatedButton(onPressed: () {}, child: Text("send"))
                    ],
                  )),
            ],
          ),
        ));
  }
}
