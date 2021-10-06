import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First APP",
      home: MyApp(),
      theme: ThemeData(primarySwatch: Colors.purple),
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
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          DrawerHeader(
            child: Text("i am here"),
            decoration: BoxDecoration(color: Colors.purple),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text('personal'),
            trailing: Icon(Icons.edit),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
