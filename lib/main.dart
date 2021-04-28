import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beginner App"),

        // backgroundColor: Colors.greenAccent,
      ),

      body: Container(
        // color: Colors.cyanAccent,

        // height: MediaQuery.of(context).size.height/2,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   child: Align(
            //     alignment: Alignment.center,
            //     child: Container(
            //       child: Text(
            //         "Drawer Header",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 30),
            //       ),
            //     ),
            //   ),
            //   decoration: BoxDecoration(color: Colors.indigoAccent),
            // ),

            UserAccountsDrawerHeader(
              accountName: Text("Burhan Ahmad"),
              accountEmail: Text("burhan.demit00@gmail.com"),

              // currentAccountPicture: Image.network("https://images.unsplash.com/photo-1499540785729-ac6adfa4efbf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJveXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1499540785729-ac6adfa4efbf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJveXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              )
              // currentAccountPicture: Image.network("https://unsplash.com/photos/3XY7BWwGolk"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("burhan.demit00@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: Icon(Icons.edit),
        // elevation: 150.0,
        mini: false,
      ),
    );
  }
}
