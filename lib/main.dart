import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(166, 7, 167, 119),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.lightGreenAccent,
          appBar: AppBar(
            actions: [Icon(Icons.settings)],
            title: Text('Tab Example'),
            bottom: TabBar(
              tabs: [Tab(text: "Tab1"), Tab(text: "Tab2"), Tab(text: "Tab3")],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Content of Tab 1'),
                ),
              ),
              Center(
                child: TextButton.icon(onPressed: () {}, label: Text('Protik')),
              ),
              Center(child: Text('Content of Tab 2')),
              Center(child: Text('Content of Tab 3')),
            ],
          ),
        ),
      ),
    );
  }
}
