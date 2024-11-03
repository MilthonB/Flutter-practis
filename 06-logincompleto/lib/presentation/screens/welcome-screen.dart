import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
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
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: svgList.length);
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));

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

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    _animationController.dispose();
    super.dispose();
  }

  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: FadeTransition(
            opacity: _animationController,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 75,
              backgroundImage: const AssetImage('assets/images/login/login.png'),
            ),
          ),
        );
      },
    );

    // Inicia la animación en bucle
    _animationController.repeat(reverse: true);

    // Simula la carga
    Future.delayed(const Duration(seconds: 3), () {
      _animationController.stop(); // Detiene la animación
      Navigator.of(context).pop(); // Cierra el diálogo
      context.push('/login'); // Navega a la pantalla de login
    });
  }

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
                  'Explore all the most exciting job roles based on your interests and study major',
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
                  onPressed: _showLoadingDialog,
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
