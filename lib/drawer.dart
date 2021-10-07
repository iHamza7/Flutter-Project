// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Email"),
          subtitle: Text('abc@example.com'),
          trailing: Icon(Icons.edit),
        ),
      ]),
    );
  }
}
