import 'package:flutter/material.dart';
import 'quote.dart';

// extracted widget
class QuoteCard extends StatelessWidget {
  final Quote quote; // final variable since it is stateless
  final Function delete;

  QuoteCard({this.quote, this.delete}); // constructor

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              // dont need to use ${} because its not outputting a string
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
              // cannot delete directly since it is a stateless widget
              onPressed: delete,
              label: Text('Delete Quote!'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
