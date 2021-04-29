import 'package:beginner_codelab/ChangeNameWidget.dart';
import 'package:beginner_codelab/bgimg.dart';
import 'package:beginner_codelab/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController= TextEditingController();
  var txt="Some Text";



  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text("Beginner App"),

        // backgroundColor: Colors.greenAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Card(

              child: ChangeNameWidget(txt: txt, nameController: _nameController),
            ),
          ),
        ),
      ),

      drawer:MyDrawer(),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        txt= _nameController.text;

        setState(() {

        });

      },

      child: Icon(Icons.refresh),
      // elevation: 150.0,
      mini: false,
    );
  }
}