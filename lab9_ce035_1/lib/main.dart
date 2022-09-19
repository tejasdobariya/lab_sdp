import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));
class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'jignesh1'),
    Quote(author: 'jignesh2', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'jignesh3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}