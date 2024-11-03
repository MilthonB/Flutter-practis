import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Agendascreen extends StatefulWidget {
  const Agendascreen({super.key});

  @override
  State<Agendascreen> createState() => _AgendascreenState();
}

class _AgendascreenState extends State<Agendascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Agenda View')),
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
          'Benvenidos Agendas...',
          style: GoogleFonts.redHatDisplay(fontSize: 20),
        ),
      ),
    );
  }
}
