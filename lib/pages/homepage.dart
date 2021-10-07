// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:oldpro/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _nameController = TextEditingController();

  var mytext = "Change Me";
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    var res;
    res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    // ignore: avoid_print
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      subtitle: Text("ID = ${data[index]["id"]}"),
                      title: Text(data[index]["title"]),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
