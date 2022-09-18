import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Exmple'),
        ),
        body: Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    // Add your onPressed code here!
                    print("ok");
                    Navigator.pushNamed(context, '/location');
                  },
                  label: const Text('Select'),
                  icon: const Icon(Icons.location_city_rounded),
                  backgroundColor: Colors.pink,
                ),
              ],
            )));
  }
}
