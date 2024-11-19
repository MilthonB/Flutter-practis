import 'package:flutter/material.dart';

class ButtonOrange extends StatelessWidget {
  final String text;
  final double alto;
  final double ancho;
  final Color color;
  const ButtonOrange({super.key, required this.text,  this.alto=50, this.ancho=150,  this.color=Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ancho,
      height: alto,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      color: color,
      ),
      child: Text(text, style: const TextStyle(color: Colors.white),),
    );
  }
} 