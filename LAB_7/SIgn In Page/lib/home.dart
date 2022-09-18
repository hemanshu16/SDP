import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'singup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(width: w, height: h * 0.3, color: Colors.blueAccent),
        Container(
          width: w,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome You Succefully Registerd",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: FloatingActionButton.extended(
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.pop(context);
                    });
                  },
                  label: const Text('Log Out'),
                  icon: const Icon(Icons.logout),
                  backgroundColor: Colors.blueAccent,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
