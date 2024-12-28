import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override

  Widget build(BuildContext context) {
  
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                Expanded(
                  child: Container(
                    color: Colors.teal[300],
                    height: height * 0.15,
                    width: width,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height *.150,
                        width: width * .25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height *.150,
                        width: width * .25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height *.150,
                        width: width * .25,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height * .30,
                        width: width * .22,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height * .30,
                        width: width * .70,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height * .20,
                        width: width * .70,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        color: Colors.teal[300],
                        height: height *.20,
                        width: width *.22,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
