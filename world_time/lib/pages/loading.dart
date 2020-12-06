import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime(); // future
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }

  void getData() async {
    Response response =
        await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }

  // void getTime() async {
  //   // make the request
  //   Response response =
  //       await get('http://worldtimeapi.org/api/timezone/Asia/Singapore');
  //   Map data = jsonDecode(response.body);
  //   // print(data);

  //   // get properties from data
  //   String datetime = data['datetime'];
  //   String offset = data['utc_offset'];
  //   print(datetime);
  //   print(offset);

  //   // create DateTime object
  //   DateTime now = DateTime.parse(datetime);
  //   now.add(Duration());
  //   print(now);
  // }

  @override
  void initState() {
    super.initState();
    print('initState function ran in loading');
    getData();
    // getTime();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Padding(padding: EdgeInsets.all(50.0), child: Text('loading...')),
    // );
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
