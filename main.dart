import 'package:flutter/material.dart';
import 'package:largest_num_app/find/largest.dart';


void main()=>runApp(Find());
class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Find App",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 30
          ),
          ),
        ),
        body: FindApp(),
      ),
    );
  }
}
