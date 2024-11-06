import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenBuild extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const ScreenBuild({super.key, required this.navigationShell, });

  @override
  State<ScreenBuild> createState() => _ScreenBuildState();
}

class _ScreenBuildState extends State<ScreenBuild> {
  
  late PageController pageController; 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0, keepPage: true);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose(); 
  }


  @override
  Widget build(BuildContext context) {

    if( pageController.hasClients ){
      pageController.animateToPage(widget.navigationShell.currentIndex, duration: Duration(milliseconds: 250), curve: Curves.easeOutBack);
    }

    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        // controller: pageController,
        children: [widget.navigationShell],
      ),
      bottomNavigationBar: _CustomBottomNavigation( navigationShell: widget.navigationShell,),
    );
  }
}

class _CustomBottomNavigation extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const _CustomBottomNavigation({
    super.key, required this.navigationShell,
  });

  @override
  State<_CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<_CustomBottomNavigation> {


  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      initialLocation: true,
      index
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.navigationShell.currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.black54,
      elevation: 0,
      onTap: (value) {
        return _goBranch(value);
      },
      items: const [

            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.fileMedical, size: 20,), label: 'Salud'),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.stethoscope, size: 20), label: 'Veterinarios'),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.handHoldingHeart, size: 20), label: 'Adopcion'),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.paw, size: 20), label: 'Actividad'),
            BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.shieldDog, size: 20), label: 'Seguridad'),

      ]
    );
  }
  
  
}