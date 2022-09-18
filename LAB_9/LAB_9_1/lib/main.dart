import 'package:flutter/material.dart';
//import 'package:lab8_2/quote.dart';
import 'quote.dart'; // due to same directory file no need path
import 'dart:core';
import 'quote_card.dart';
/*
void main() => runApp(MaterialApp(
  home: EchoList(),
)); 
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple',author:
    'Hello'),

    Quote(author: 'CE038', text: 'I see humans but no humanity'),
    Quote(text: 'The time is always right to do what is right',author:
    'Hemanshu Faldu'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Color.fromARGB(255, 243, 249, 255),

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,

                color: Colors.black,

              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 235, 255),
      appBar: AppBar(
        title: Text('My Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
       // children: quotes.map((quote) => quoteTemplate(quote)).toList(),

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

*/
void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {

  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'CE040'),
    Quote(author: 'CE040', text: 'I see humans but no humanity'),
    Quote(
        text: 'The time is always right to do what is right',
        author: 'Jay Gajera'),
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
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes
            .map((quote) => QuoteCard(
                  // children: quotes.map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
