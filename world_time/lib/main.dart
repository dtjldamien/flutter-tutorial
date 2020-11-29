import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    // routing is like a stack
    routes: {
      // key value pairs
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
