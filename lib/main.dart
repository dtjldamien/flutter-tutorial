import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('hello'), // need to use a text widget to show
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        child: Text(
          'you are using myapp!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Roboto',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click!'),
        backgroundColor: Colors.red[600],
      ),
    ),
  ));
}
