import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  double _w = 0;
  double _h = 15;

  // changeSize(){
  //   Random ran = Random();
  //   w = ran.nextDouble(  ) * 250; 
  //   h = ran.nextDouble(  ) * 100;
  //   setState(() {
      
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _w = 50;
    //       _h = 50;
    Future.delayed(
      Duration(milliseconds: 500), () {
        setState(() {
          _w = 30;
          // _h = 15;    
        });
      },
    );


  }


  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            width: _w,
            height: _h,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ) ,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
