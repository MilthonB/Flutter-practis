import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes/src/models/shoes_model.dart';
import 'package:shoes/src/pages/shoe_page.dart';
import 'package:shoes/src/pages/shoes_desc_page.dart';

void main() {
  return runApp(

    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => new ShoesModel(), 
        )
      ],
      child: MainApp(),
    )

  );
  // runApp(
  //   MainApp()
  // );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ShoePage(),
        // body: ShoesDescPage(),
      ),
    );
  }
}
