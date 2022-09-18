import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // home is property and after : is its value widget.
  // Scaffold is widgets built in flutter sdk..Scaffold is one type of
    home: Scaffold(
    appBar: AppBar(
    title: Text('Lab-7'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
    ),
    // body: Center(
    // child: Text('HELLO DDU',
    //       style: TextStyle(
    //       fontSize: 24.0,
    //       fontWeight: FontWeight.bold,
    //       letterSpacing: 2.0,
    //       color: Colors.grey[600],
    //       fontFamily: 'Cormorant'
    //     ),
    //   ),
    // ),
    // body: Center(
    //   child: Image(
    //     image: AssetImage('assets/sub_assets/book1.jpg'),
    //   ),
    // ),

    //   body: Center(
    //       // child: FlatButton(
    //       //   onPressed: () {
    //       //     print('print on consol');
    //       //   },
    //       //   child: Text('click Me'),
    //       //   color: Colors.blue,
    //       // )
    //     child: IconButton(
    //       icon: Icon(
    //         Icons.mail_outline_sharp,
    //         size: 30.0,
    //       ),
    //       tooltip: 'send mail me',
    //       onPressed: () {
    //         print('on console print');
    //       },
    //     ),
    //   ) ,
    // floatingActionButton: FloatingActionButton(
    //       onPressed: () {},
    //       child: Text('click'),
    //       backgroundColor: Colors.red[600],
    //     ),
body: Center(
    child: Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
      icon: Icon(
          Icons.photo_camera,
          color:Colors.greenAccent,
          size: 50.0,
          ),
    label: Text("Gallery",
              style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              letterSpacing: 2.0,
              backgroundColor: Colors.redAccent,
              ),
      textAlign: TextAlign.start,
),
onPressed: () {},

)
,
)
      ))
));

