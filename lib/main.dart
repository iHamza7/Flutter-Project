// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:oldpro/pages/homepage.dart';
import 'package:oldpro/pages/login_page.dart';
import 'package:oldpro/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First APP",
      home: Constants.prefs.getBool("loggedIn") == true ? MyApp() : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ),
  );
}
