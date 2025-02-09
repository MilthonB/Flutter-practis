import 'package:flutter/material.dart';
import 'dart:math';

class ScreenInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Diagonal de la pantalla en pulgadas (6.5")
    double diagonalInches = 6.5;

    // Relación de aspecto (16:9)
    double aspectRatioWidth = 16;
    double aspectRatioHeight = 9;

    // Usamos el teorema de Pitágoras para calcular el ancho y el alto
    double aspectRatio = sqrt(pow(aspectRatioWidth, 2) + pow(aspectRatioHeight, 2));

    // Calcular el ancho y alto en pulgadas
    double widthInches = (diagonalInches * aspectRatioWidth) / aspectRatio;
    double heightInches = (diagonalInches * aspectRatioHeight) / aspectRatio;

    // Convertir las dimensiones de pulgadas a centímetros
    double widthCm = widthInches * 2.54;
    double heightCm = heightInches * 2.54;

    return Scaffold(
      appBar: AppBar(title: Text('Tamaño de la Pantalla')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ancho de la pantalla: ${widthCm.toStringAsFixed(2)} cm',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Alto de la pantalla: ${heightCm.toStringAsFixed(2)} cm',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScreenInfo(),
  ));
}
