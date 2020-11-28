import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Be yourself', 'Oscar Wilde'),
    Quote('Test', 'Damien Tan'),
    Quote('YOLO PLTR', 'r/wsb')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          // cycle through the list of quotes, avoid hardcoding
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    // use setState() to remove the quote since it is a stateless widget
                    setState(() {
                      quotes.remove(quote);
                    });
                  })) // pass in named parameter
              .toList(), // returns a list of text widgets
        ));
  }
}
