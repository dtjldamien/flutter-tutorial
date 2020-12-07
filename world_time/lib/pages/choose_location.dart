import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    }); // dont pass arguments if popping a route
  }

  // int counter = 0;

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

  // void setupWorldTime() async {
  //   WorldTime instance = WorldTime(
  //       location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
  //   await instance.getTime();
  //   Navigator.pushReplacementNamed(context, '/home', arguments: {
  //     'location': instance.location,
  //     'flag': instance.flag,
  //     'time': instance.time,
  //     'isDaytime': instance.isDaytime
  //   });
  // }

  @override
  void initState() {
    super.initState();
    print('initState function ran in choose_location');
    // getData();
    // setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Padding(
    //     padding: const EdgeInsets.all(50.0),
    //     child: Text('loading'),
    //   ),
    // );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
    // print('build function ran');
    // return Scaffold(
    //   backgroundColor: Colors.grey[200],
    //   appBar: AppBar(
    //     backgroundColor: Colors.blue[900],
    //     title: Text('Choose a location'),
    //     centerTitle: true,
    //     elevation: 0,
    //   ), // for the back arrow
    //   body: RaisedButton(
    //     onPressed: () {
    //       setState(() {
    //         counter += 1;
    //       });
    //     },
    //     child: Text('Counter is $counter'),
    //   ),
    // );
  }
}
