import 'dart:js';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  Map<dynamic,dynamic> data = {};
  @override
  Widget build(BuildContext context) {
    
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
    String imageurl = data["isDayTime"] ? "assets/images/day.jpg" :"assets/images/night.jpg";
    Color? appBgColor = data["isDayTime"] ? Colors.blue : Colors.indigo;
   
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageurl),
              fit: BoxFit.cover),
            ),
          
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () async{
                dynamic result = await Navigator.pushNamed(context, '/location');
                print(result);
                setState(() {
                  
                  data = {
                    'time' : result['time'],
                    'location' :result['location'],
                    'isDayTime' : result['isDayTime'],
                    'flag' : result['flag'],
                  };
                });
              },
              icon: Icon(Icons.edit_location),
              label: Text('EDIT LOCATION',style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),),
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
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 70.0,
                 fontWeight: FontWeight.w500,
                    color: Colors.white70,
              ),
            )
          ],
        ),
      )),)
    );
  }
}
