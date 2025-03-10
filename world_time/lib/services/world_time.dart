import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api end point
  bool isDaytime; // true or false if day time or not

  WorldTime({this.location, this.flag, this.url, this.isDaytime});

  // getTime() will return a Future (promise), placeholder value till fucntion is complete
  Future<void> getTime() async {
    try {
      // make the request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3); // e.g. 08 for +08:00
      print(datetime);
      print(offset);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));

      //set the time property
      isDaytime = now.hour > 7 && now.hour < 19 ? true : false;
      // isDaytime = false;
      // time = now.toString();
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}
