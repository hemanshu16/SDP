import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second/home.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(width: w, height: h * 0.15, color: Colors.blueAccent),
        Container(
          width: w,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
              ),
              Text(
                "Create A New Account",
                style: TextStyle(fontSize: 20, color: Colors.grey[500]),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: usernamecontroller,
                    decoration: InputDecoration(
                        hintText: "Your Email Id",
                        prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Your Password",
                        prefixIcon: Icon(Icons.password_outlined,
                            color: Colors.blueAccent),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: TextField(
                    controller: confirmpasswordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        prefixIcon: Icon(Icons.password_outlined,
                            color: Colors.blueAccent),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ))
            ],
          ),
        ),

        SizedBox(
          height: 20,
        ),
        // Row(
        //   children: [
        //     Expanded(child: Container()),
        //     Text(
        //       "Sing In To Yout Account   ",
        //       style: TextStyle(
        //         fontSize: 20,
        //         color: Colors.grey[500],
        //       ),
        //     )
        //   ],
        // ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: w * 0.5,
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 1.0)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      if (confirmpasswordcontroller.text ==
                          passwordcontroller.text) {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: usernamecontroller.text,
                                password: passwordcontroller.text)
                            .then((value) {
                          Navigator.pop(context);
                        }).onError((error, stackTrace) {
                          print("error");
                        });
                      }
                      else{
                         final snackBar = SnackBar(
            backgroundColor: Colors.white,
            content:  Container(
              height: h*0.1,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
               
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child:Text("Password And Confirm Password Not Matched" ,style: TextStyle(color: Colors.black,fontSize: 20),)
            )
           
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ])),

        SizedBox(
          height: 20,
        ),
        Container(
            width: w,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account",
                    style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ])),
      ]),
    );
  }
}
