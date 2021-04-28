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
          backgroundColor: Colors.greenAccent,
        ),

        // body: Container(
        //
        //   color: Colors.cyanAccent,
        //
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height,
        //   // height: MediaQuery.of(context).size.height/2,
        //   child: Row(
        //     // mainAxisAlignment: MainAxisAlignment.center,
        //     // crossAxisAlignment: CrossAxisAlignment.stretch,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     // crossAxisAlignment: CrossAxisAlignment.start,
        //     // mainAxisAlignment: MainAxisAlignment.end,
        //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     // mainAxisAlignment: MainAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Container(
        //         padding: const EdgeInsets.all(8),
        //         width: 100,
        //         height: 100,
        //         color: Colors.deepOrangeAccent,
        //       ),
        //       Container(
        //         padding: const EdgeInsets.all(8),
        //         width: 100,
        //         height: 100,
        //         color: Colors.teal,
        //       ),
        //       Container(
        //         padding: const EdgeInsets.all(8),
        //         width: 100,
        //         height: 100,
        //         color: Colors.amberAccent,
        //       ),
        //     ],
        //   ),
        // ));
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Container(
        //
        //     color: Colors.cyanAccent,
        //
        //     width: MediaQuery.of(context).size.width,
        //     height: MediaQuery.of(context).size.height,
        //     // height: MediaQuery.of(context).size.height/2,
        //     child: Column(
        //       // mainAxisAlignment: MainAxisAlignment.center,
        //       // crossAxisAlignment: CrossAxisAlignment.stretch,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       // crossAxisAlignment: CrossAxisAlignment.start,
        //       // mainAxisAlignment: MainAxisAlignment.end,
        //       // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Container(
        //           padding: const EdgeInsets.all(8),
        //           width: 100,
        //           height: 100,
        //           color: Colors.deepOrangeAccent,
        //         ),
        //         Container(
        //           padding: const EdgeInsets.all(8),
        //           width: 100,
        //           height: 100,
        //           color: Colors.teal,
        //         ),
        //         Container(
        //           padding: const EdgeInsets.all(8),
        //           width: 100,
        //           height: 100,
        //           color: Colors.amberAccent,
        //         ),
        //       ],
        //     ),
        //   ),
        // ));
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: Container(

              color: Colors.cyanAccent,

              width: 200,
              height: 300,
              // height: MediaQuery.of(context).size.height/2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.teal,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
