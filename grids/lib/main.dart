import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grids'),
          foregroundColor: Colors.white,
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 6, // Número de columnas
          mainAxisSpacing: 10.0, // Espacio vertical entre tarjetas
          crossAxisSpacing: 10.0, // Espacio horizontal entre tarjetas
          children: List.generate(10, (index) {
            return Card(
              child: Center(child: Text('data'),)
            );
          }),
        ),
      ),
    );
  }
}
