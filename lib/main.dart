import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: ("hi"),
      // make home
      home: Firstpage()));
}

class Firstpage extends StatefulWidget {
  //current balance
  int money = 10000;
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // main page text
            Text(
              'Current Balance: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45
              ),
            ),
            Text(
              '\$${widget.money}\n',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45
              ),
            ),
            // buy stock that costs 1000
            RaisedButton(
                child: Text(
                  "Invest in TESLA",
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                onPressed: () {
                  setState(() {
                    widget.money = widget.money - 1000;
                  });
                }
            ),
            // buy suit that costs 500
            RaisedButton(
              child: Text(
                "Buy an interview suit",
                style: TextStyle(
                    fontSize: 30
                ),
              ),
              onPressed: () {
                setState(() {
                  widget.money = widget.money - 500;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}

