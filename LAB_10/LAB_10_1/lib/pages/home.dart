import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var counter = 0;
  String data = "Json Data is Loading . . .";
  @override
  void initState() {
    super.initState();
    print("Init State Function run in Widget LIfe Cycle");
    getData();
  }
/*
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 4), () {
      return 'UNIVERSITY NAME : DDU';
    });
    print(username);
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY';
    });
    print(bio);
  }*/
  void getData() async {
     String username = await Future.delayed(Duration(seconds: 4), () {
      return 'UNIVERSITY NAME : DDU';
    });
    final Response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    setState(() {
      data = Response.body.toString();
      print(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    //  print("Build Function run in Widget LIfe Cycle");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget life cycle'),
        ),
        body: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                // FloatingActionButton.extended(
                //   onPressed: () {
                //     setState(() {
                //       counter += 1;
                //     });
                //   },
                //   label: Text(counter.toString()),
                //   icon: const Icon(Icons.add),
                //   backgroundColor: Colors.pink,
                // ),
                Text(data,style: TextStyle(fontSize: 20),)
              ],
            )));
  }
}
