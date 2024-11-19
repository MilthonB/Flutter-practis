import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget {
  final String texto;
  const CustomeAppbar({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          width: double.infinity,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(30),
          //   color: Colors.black12
          // ),
          // height: 150,
          // color: Colors.red,
          child: Row(
            children: [
              Text(texto, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
              const Spacer(),
              const Icon(Icons.search, size: 30,)
            ],
          ),
        
        ),
      ),
    );
  }
}