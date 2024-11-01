// ignore_for_file: file_names, depend_on_referenced_packages, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:logincompleto/config/routes/routes-app.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> svgList = <String>[
    'assets/images/welcome/initial2.svg',
    'assets/images/welcome/initial3.svg',
    'assets/images/welcome/initial4.svg',
    'assets/images/welcome/initial5.svg',
    'assets/images/welcome/initial6.svg'
  ];

  List<String> textList = <String>[
    'Finding',
    'Revelation',
    'Uncovering',
    'Detection',
    'Discover'
  ];

  late PageController _pageController;
  late Timer _timer;
  int _currentIndex = 0;
  // bool _loginExecuted = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: svgList.length);
    
    // _checkLoginExecuted();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentIndex < svgList.length - 1) {
        _currentIndex++;
      } else {
        setState(() {});
        _currentIndex = 0;
      }
      _pageController.jumpToPage(_currentIndex);
    });
  }

  // Future<void> _checkLoginExecuted() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool? executed = prefs.getBool('screen2Executed');
  //   if (executed != null && executed) {
  //     setState(() {
  //       _loginExecuted = true;
  //     });
  //   }
  // }


  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  // void _stopPageViewAndTimer() { 
  //   _timer.cancel(); // Cancelar el Timer 
  //   _pageController.dispose(); // Detener el PageController 
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            Center(
              child: Text(
                'Welcome',
                style: GoogleFonts.redHatDisplay(
                    color: Colors.blue,
                    fontSize: 35,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 360,
              child: PageView.builder(
                controller: _pageController,
                itemCount: svgList.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: FadeInRight(
                      animate: true,
                      curve: Curves.linear,
                      duration: const Duration(seconds: 1),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 170,
                            child: SvgPicture.asset(svgList[index]),
                          ),
                          const SizedBox(height: 20),
                          const SizedBox(height: 50),
                          Center(
                            child: Text(
                              '${textList[index]} you',
                              style: GoogleFonts.redHatDisplay(
                                  color: Colors.black87, fontSize: 35),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Dreams job here',
                              style: GoogleFonts.redHatDisplay(
                                  color: Colors.blue,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Center(
                child: Text(
                  'Explore all the most existing jobs roles based on your interesent and study major',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redHatDisplay(
                      color: Colors.black45,
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  onPressed: () {
                    context.push('/register');
                  },
                  child: Text(
                    'Register',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 50),
                    backgroundColor: const Color.fromARGB(255, 236, 236, 236),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  onPressed: () async {
                    // Mostrar loading indicator

                    // if(_loginExecuted){
                    //   context.push('/login');
                    // }

                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );


                    // Simular carga (puedes reemplazar esto con tu lógica real)
                    await Future.delayed(const Duration(seconds: 3));

                    // Cerrar el loading indicator
                    Navigator.of(context).pop();

                    // Navegar a la pantalla de login
                    context.push('/login');
                  },
                  child: Text(
                    'Log In',
                    style: GoogleFonts.redHatDisplay(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
