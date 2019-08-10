import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: AwesomeButton()),
  );
}

class AwesomeButton extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  List<String> words = ["Flutter", "is", "Awesome"];
  int count = 0;
  String displayedString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(displayedString, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RaisedButton(
                child: Text(
                  'Press Me',
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20),
                ),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    displayedString = words[count];
                    count = count < 2 ? count + 1 : count = 0;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
