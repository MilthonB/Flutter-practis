import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Home View')),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Benvenidos...',
          style: GoogleFonts.redHatDisplay(fontSize: 20),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Colors.blue,
      //     unselectedItemColor: Colors.amber,
      //     selectedItemColor: Colors.green,
      //     elevation: 7.0,
      //     onTap: (value) { // devuelve el indice
      //       print(value);
      //       // print(widget.navigationShell.currentIndex);
      //     },
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      //     ]),
    );
  }
}
