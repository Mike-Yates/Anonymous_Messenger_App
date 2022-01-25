import 'package:anonymous_commenter_app/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:http/http.dart' show get;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

// basics of network requests

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // prevents race condition between firebase and widgets initializing.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET Request"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        fetchData();
      }),
    );
  }

  void fetchData() async {
    //var result = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    // print(result.body);

    DatabaseReference _testRef = FirebaseDatabase.instance.ref().child("test");
    _testRef.set("hello World! ${Random().nextInt(100)}");
    print("feedback");
    // get(Uri.parse('https://jsonplaceholder.typicode.com/photos')).then((result) { print(result.body);  });
  }
}
