import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FinalTest1(),
    ));

class FinalTest1 extends StatefulWidget {
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {
// const FinalTest1({Key? key}) : super(key: key);
num age=19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text('Lab 8.2'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 73, 194, 255),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/first.jpg'),
                radius: 50,
              ),
            ),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Faldu Hemanshu',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.deepPurple[800],
                ),
                SizedBox(width: 12.0),
                Text(
                  '20ceuog021.ac.in',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                child: Icon(
                    Icons.add
                ),
                onPressed: () {
                  setState(() {
                    age+=1;
                  });
                },
              ),
              FloatingActionButton(
                child: Text(
                    "-",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                onPressed: () {
                  setState(() {
                    age-=1;
                  });
                },
              ),
            
            ]
        )
    );
  }
}
