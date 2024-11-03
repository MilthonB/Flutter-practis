import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Horariosscreen extends StatefulWidget {
  const Horariosscreen({super.key});

  @override
  State<Horariosscreen> createState() => _HorariosscreenState();
}

class _HorariosscreenState extends State<Horariosscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Horarios View')),
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
