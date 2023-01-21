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
      home: const TweetLikePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
