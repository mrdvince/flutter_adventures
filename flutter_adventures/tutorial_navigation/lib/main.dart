import 'package:flutter/material.dart';

import './firstPage.dart' as first;
import './secondPage.dart' as second;
import './thirdPage.dart' as third;

void main() {
  runApp(MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;
    @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs'),
        backgroundColor: Colors.deepOrange,
        bottom: TabBar(
          controller: controller,
          tabs: <Tab>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          first.First(),
          second.Second(),
          third.Third()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.deepOrange,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.arrow_downward)),
            Tab(icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
      ),
    );
  }
}
