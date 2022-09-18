import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter/material.dart';

import '../Services/world_time.dart';

class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'LOADING..........';
  void setWorldTime() async {
    WordTime timeinstance =
        WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata');
    await timeinstance.getTime();

    setState(() {
      print(timeinstance.time.toString());
      time = timeinstance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dubai Time'),
        ),
        body: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(time.toString(),style: TextStyle(fontSize: 20),),
                // FloatingActionButton.extended(
                //   onPressed: () {
                //     // Add your onPressed code here!
                //     print("ok");
                //     Navigator.pushNamed(context, '/location');
                //   },
                //   label: const Text('Select'),
                //   icon: const Icon(Icons.location_city_rounded),
                //   backgroundColor: Colors.pink,
                // ),
              ],
            )));
  }
}
