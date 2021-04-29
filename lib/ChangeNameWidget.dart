import 'package:beginner_codelab/bgimg.dart';
import 'package:flutter/material.dart';

class ChangeNameWidget extends StatelessWidget {
  const ChangeNameWidget({
    Key key,
    @required this.txt,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String txt;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BGImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          txt,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _nameController,
            keyboardType: TextInputType.text,
            // obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Here",
              labelText: "Name",
              border: OutlineInputBorder(),

            ),
          ),
        ),
      ],
    );
  }
}