import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String desc;
  const ShoeDescription({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:35.0),
      child: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text(desc, style: TextStyle(color: Colors.black54, height: 1.6),),
          ],
        ),
      ),
    );
  }
}