import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  // void getData() async {
  //   // simulate network request for a username
  //   // await waits for this current statement to finish before running the next line
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     return 'yoshi';
  //   });

  //   // simulate network request for a bio for the username
  //   String bio = await Future.delayed(Duration(seconds: 3), () {
  //     return 'musician and egg collector';
  //   });

  //   // waits for both username and bio to be returned
  //   print('$username - $bio');

  //   // async method would not block the other methods from running
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   print('initState function ran');
  //   getData();
  // }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ), // for the back arrow
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
