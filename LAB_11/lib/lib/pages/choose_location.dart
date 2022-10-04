import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose Location'),
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
                    Navigator.pop(context);
                  },
                  label: const Text('Choose Location'),
                  icon: const Icon(Icons.location_city_rounded),
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  height: 50,
                ),
                FloatingActionButton.extended(
                  onPressed: () {
                    // Add your onPressed code here!
                    print("ok");
                    Navigator.pop(context);
                  },
                  label: const Text('Go Back'),
                  icon: const Icon(Icons.arrow_back),
                  backgroundColor: Colors.pink,
                ),
              ],
            )));
  }
}