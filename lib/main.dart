import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First APP",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(),
    );
  }
}
