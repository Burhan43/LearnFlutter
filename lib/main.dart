import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Beginner App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            // color: Colors.teal,  // no color if using decoration
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.teal,
                // borderRadius: BorderRadiusDirectional.all(Radius.circular(50)),

                // shape: BoxShape.circle,

                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5,
                      // spreadRadius: 5
                    offset: Offset(2.0,10.0)
                  )
                ],
                gradient:
                    LinearGradient(colors: [Colors.yellowAccent, Colors.pink])),
            // if using decoration no color property will use out of decoration
            child: Text(

                "Box",

                textAlign:TextAlign.center,
                style: TextStyle(

              color: Colors.white,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,

              fontWeight: FontWeight.bold
            ),),
          ),
        ));
  }
}
