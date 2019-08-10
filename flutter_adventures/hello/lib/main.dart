import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widgets'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MyCard(
                  title: Text('I Love Flutter', style: TextStyle(fontSize: 20)),
                  icon:
                      Icon(Icons.favorite, size: 40.0, color: Colors.redAccent),
                ),
                MyCard(
                  title:
                      Text('I Love Doughnuts', style: TextStyle(fontSize: 20)),
                  icon: Icon(Icons.donut_large, size: 40, color: Colors.brown),
                ),
                MyCard(
                  title:
                      Text('Am Watching You!!', style: TextStyle(fontSize: 20)),
                  icon: Icon(Icons.visibility, size: 40, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});
  final Widget title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: new Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[this.title, this.icon],
            ),
          ),
        ),
      ),
    );
  }
}
