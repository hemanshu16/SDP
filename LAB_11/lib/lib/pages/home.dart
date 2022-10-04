import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   Map<dynamic,dynamic> data ={};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Location'),
        ),
        body: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                TextButton.icon(
                onPressed: () {
        Navigator.pushNamed(context,'/location');
        },

          icon: Icon(Icons.edit_location),
          label: Text('EDIT LOCATION'),
        ),
      SizedBox(height: 24.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            data['location'],
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 28.0,

            ),
          )
        ],
      ),
      SizedBox(height: 24.0,),
      Text(
        data['time'],
        style: TextStyle(
          fontSize: 70.0,
        ),
      ),
         SpinKitFadingFour(
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
    )
      ],
            )));
  }
}