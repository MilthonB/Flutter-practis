import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.blue
      // ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _obscureText = true;
 
 late Future<void> _svgLoader;

  @override
  void initState() {
    super.initState();
    // Pre-cargar la imagen SVG
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            color: Color(0xFF017162)
          ),
          child: SafeArea(
            child: Container(
              decoration: BoxDecoration(
              // boxShadow: [ BoxShadow( color: const Color.fromARGB(255, 100, 96, 192).withOpacity(0.5), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3),)],  
              color: Colors.white,
                borderRadius: BorderRadius.circular(40)
              ),
            margin: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                            
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 100,),
                                SvgPicture.asset('assets/images/login/login.svg', height: 100,),
                                const SizedBox(height: 30,),
                                Text(
              'Hello Again!',
              textAlign: TextAlign.center,
              style: GoogleFonts.redHatDisplay(
                  fontSize: 30, color: Color(0xFF00BFA6), fontWeight: FontWeight.w700),
                                ),
                                Text(
              'Welcome back you have been missed!',
              textAlign: TextAlign.center,
              style: GoogleFonts.redHatDisplay(fontSize: 30),
                                ),
                                Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      // label: const Text('User'),
                      hintStyle: GoogleFonts.redHatDisplay(color: Colors.black38),
                      hintText: 'Enter username',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 1.0)),
                      focusedBorder: OutlineInputBorder(
                          // borderSide: BorderSide( color: Colors.green, width: 3.0),
                          borderSide:
                              const BorderSide(color: Colors.black12, width: 1.0),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(style: BorderStyle.solid)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        // label: const Text('User'),
                        hintStyle:
                            GoogleFonts.redHatDisplay(color: Colors.black38),
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: Colors.black12, width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            // borderSide: BorderSide( color: Colors.green, width: 3.0),
                            borderSide: const BorderSide(
                                color: Colors.black12, width: 1.0),
                            borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                const BorderSide(style: BorderStyle.solid)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _obscureText = !_obscureText;
                            setState(() {});
                          },
                          icon: (_obscureText)
                              ? const Icon(
                                  Icons.visibility,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                ),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Recovery Password',
                      style: GoogleFonts.redHatDisplay(),
                    ),
                  ),
                            
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00BFA6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {}, 
                      child: Text('Sign in', style: GoogleFonts.redHatDisplay( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),),
                  ),
                            
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      const Expanded(child: Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Or continue with', style: GoogleFonts.redHatDisplay(),),
                      ),
                      const Expanded(child: Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),),
                    ],
                  ),
                            
                  const SizedBox(height: 15,),
                            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    IconButton(onPressed: () {
                      
                    }, icon: const FaIcon(FontAwesomeIcons.facebook,size: 35, color: Colors.blue,),), 
                    // const Icon(Icons.apple, size: 35,),),
                    // Spacer(),
                    IconButton(onPressed: () {
                      
                    }, icon: const FaIcon(FontAwesomeIcons.google, size: 35, color: Colors.black54,),), 
                    //const Icon(Icons.facebook, size: 35, color: Colors.blue,),),
                    // Spacer(),
                    IconButton(onPressed: () {
                      
                    }, icon: const FaIcon(FontAwesomeIcons.github, size: 35, color: Colors.blueGrey,),), 
                    //icon: const Icon(Icons.email, size: 35,),),
                    // Spacer(),
                    ],
                  ),
                            
                  const SizedBox(height: 30,),
                  RichText(
                    text: TextSpan(
                      text: 'Not a memeber? ',
                      style: GoogleFonts.redHatDisplay(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Register now',
                          style: GoogleFonts.redHatDisplay(color: Color(0xFF00BFA6), fontWeight: FontWeight.bold)
                        )
                      ]
                    )
                  ),
                ],
              ),
                                ),
                              ],
                            ),
              ),
            ),
          ),
        ));
  }
  
  


}
