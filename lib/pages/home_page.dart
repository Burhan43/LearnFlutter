import 'package:beginner_codelab/ChangeNameWidget.dart';
import 'package:beginner_codelab/bgimg.dart';
import 'package:beginner_codelab/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var txt = "Some Text";

  // ('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  var url = Uri.https("jsonplaceholder.typicode.com", "/photos");
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);

    print(res.body);

    data = jsonDecode(res.body);

    setState(() {});

    print(data);
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
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle:Text("ID: ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),

      drawer: MyDrawer(),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: buildFloatingActionButton(),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        txt = _nameController.text;

        setState(() {});
      },

      child: Icon(Icons.refresh),
      // elevation: 150.0,
      mini: false,
    );
  }
}
