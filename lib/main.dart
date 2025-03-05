import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
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
              Center(child: Text('Content of Tab 2')),
              Center(child: Text('Content of Tab 2')),
            ],
          ),
        ),
      ),
    );
  }
}
