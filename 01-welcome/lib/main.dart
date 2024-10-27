import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> svgList = <String>[
    'assets/images/login/initial2.svg',
    'assets/images/login/initial3.svg',
    'assets/images/login/initial4.svg',
    'assets/images/login/initial5.svg',
    'assets/images/login/initial6.svg'
  ];

  List<String> textList = <String>[
    'Finding',
    'Revelation',
    'Uncovering',
    'Detection',
    'Discover'
  ];

  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: svgList.length);

    Timer.periodic(const Duration(seconds: 3), (timer) {
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
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
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
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                'Welcome',
                style: GoogleFonts.redHatDisplay(
                    color: Colors.blue,
                    fontSize: 35,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
                height: 360,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: svgList.length,
                  itemBuilder: (context, index) {
                    return Center(
                        // child: SvgPicture.asset(svgList[index])
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
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
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
                            )),
                        );
                  },
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Center(
                child: Text(
                  'Explore all the most existing jobs roles based on your interesent and study major ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redHatDisplay(
                      color: Colors.black45,
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 50),
                        backgroundColor:
                            const Color.fromARGB(255, 236, 236, 236),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    onPressed: () {},
                    child: Text(
                      'Sing In',
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
