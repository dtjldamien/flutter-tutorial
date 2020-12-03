import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  void getTime() async {
    // make the request
    Response response =
        await get('http://worldtimeapi.org/api/timezone/Asia/Singapore');
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    print(datetime);
    print(offset);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now.add(Duration());
    print(now);
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran in loading');
    getData();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
