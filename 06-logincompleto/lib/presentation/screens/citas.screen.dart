import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Citasscreen extends StatefulWidget {
  const Citasscreen({super.key});

  @override
  State<Citasscreen> createState() => _CitasscreenState();
}

class _CitasscreenState extends State<Citasscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Citas View')),
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
    );
  }
}
