import 'package:flutter/material.dart';

class BGImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Image.asset(
      "assets/img2.jpeg",
      fit: BoxFit.cover,
      // width: 100,
      // height: 100,
    );


    // return Text("jh");
  }
}
