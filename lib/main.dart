// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oldpro/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "First APP",
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ),
  );
}
