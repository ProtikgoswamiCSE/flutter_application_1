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
        length: 3, // Fixed: Tab count should match TabBarView children
        child: Scaffold(
          backgroundColor: Colors.lightGreenAccent,
          appBar: AppBar(
            title: Text('Tab Example'),
            actions: [
              IconButton(
                icon: Icon(Icons.settings), // Fixed: Made it clickable
                onPressed: () {
                  print("Settings Clicked");
                },
              ),
            ],
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
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star), // Fixed: Added an icon
                  label: Text('Protik'), // Fixed: Removed the List
                ),
              ),
              Center(
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.star), // Fixed: Added an icon
                  label: Text('Content of Tab 1'), // Fixed: Removed the List
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
