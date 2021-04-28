import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Beginner App"
        ),
      ),

      body: Container(
        child: Center(child: Text("Flutter")),
      ),
    );
  }
}


