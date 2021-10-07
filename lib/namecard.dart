import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
    required this.mytext,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String mytext;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/bg.jpg"),
        SizedBox(
          height: 20,
        ),
        Text(
          mytext,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: "Enter Name",
              border: OutlineInputBorder(),
            ),
          ),
        )
      ],
    );
  }
}
