import 'package:anonymous_commenter_app/screens/home.dart';
import 'package:anonymous_commenter_app/screens/login.dart';
import 'package:anonymous_commenter_app/screens/post_options.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(routes: {
    '/': (context) => MyApp(),
    '/login': (context) => LoginScreen(),
    '/post': (context) => PostPage(),
  }));
}
