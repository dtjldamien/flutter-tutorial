import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

// Stateless widgets -> state of the widget cannot change over time
// Stateful widgets -> state of the widget can change over time
// Reusable Home widget
class Home extends StatelessWidget {
  // override the build method in StatelessWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('henlo!'), // need to use a text widget to show
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Column(
        // main axis in column is vertical
        // cross axis in a column is horizontal
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('hello!'),
              Text('world!'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('container one'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.pink,
            child: Text('container two'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.amber,
            child: Text('container three'),
          ),
        ],
      ),
      // body: Row(
      // main axis in column is horizontal
      // cross axis in a column is vertical
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     Text('hello world!'),
      //     FlatButton(
      //       onPressed: () {},
      //       color: Colors.amber,
      //       child: Text('Click me!'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container'),
      //     ),
      //   ], // list of widgets inside this row
      // ),
      // padding widget does not allow for margin and color property
      // body: Padding(
      //   padding: EdgeInsets.all(90.0),
      //   child: Text('henlo!'),
      // ),
      // container is restricted to the size of the child widget
      // body: Container(
      //   padding: EdgeInsets.symmetric(
      //       horizontal: 60.0, vertical: 10.0), // inside space
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey[400],
      //   child: Text('hello'),
      // ),
      // body: Center(
      //   child: IconButton(
      //     onPressed: () {
      //       print('Clicked alternate email icon!');
      //     },
      //     icon: Icon(Icons.alternate_email),
      //     color: Colors.amber,
      //   ),
      // ),
      // body: Center(
      //   child: RaisedButton.icon(
      //     onPressed: () {
      //       print('raised button clicked');
      //     },
      //     icon: Icon(
      //       Icons.mail,
      //     ),
      //     label: Text('mail me!'),
      //     color: Colors.amber,
      //   ),
      // ),
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       print('raised button clicked');
      //     },
      //     child: Text('click me'),
      //     color: Colors.lightBlue,
      //   ),
      // ),
      // body: Center(
      //   child: Icon(
      //     Icons.airport_shuttle, // material-icons
      //     color: Colors.lightBlue,
      //     size: 50.0,
      //   ),
      // ),
      // body: Center(
      //   child: Image(
      //     // need to declare assets  in pubspec.yaml
      //     image: AssetImage('assets/corgi_butt_fluff.jpg'),
      //     // image: NetworkImage(
      //     //     'https://i.pinimg.com/564x/d7/3e/40/d73e40a9773b20ee9d3bc88cae733424.jpg'),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click!'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
