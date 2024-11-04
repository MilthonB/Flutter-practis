// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{
  bool _obscureText = true;

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =  AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  void showDialogLoading(){
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

    _animationController.repeat(reverse: true);

    Future.delayed(
      Duration(seconds: 3),
      () {
        _animationController.stop();
        Navigator.of(context).pop();
        context.go('/homepage');
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 132, 183, 255),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 109, 170, 255),
                      radius: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 75,
                        backgroundImage:
                            AssetImage('assets/images/login/login.png'),
                      ),
                      // maxRadius: 150,
                    ),
                    // SvgPicture.asset(
                    //   'assets/images/login/login.svg',
                    //   height: 100,
                    // ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'AnimalSyncs!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 25,
                          color: Color.fromARGB(255, 93, 196, 255),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'El cuidado de tu mascota es importante!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.redHatDisplay(fontSize: 25),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              // label: const Text('User'),
                              hintStyle: GoogleFonts.redHatDisplay(
                                  color: Colors.black38),
                              hintText: 'Ingrea tu correo electronico',
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
                                  borderSide: const BorderSide(
                                      style: BorderStyle.solid)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                // label: const Text('User'),
                                hintStyle: GoogleFonts.redHatDisplay(
                                    color: Colors.black38),
                                hintText: 'Contraseña',
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
                                    borderSide: const BorderSide(
                                        style: BorderStyle.solid)),
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
                            child: TextButton(
                              child: Text('Recuperar contraseña',
                                  style: GoogleFonts.redHatDisplay()),
                              onPressed: () {
                                context.push('/securitycheckout');
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF00B0FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: showDialogLoading,
                              child: Text(
                                'Iniciar Sesión',
                                style: GoogleFonts.redHatDisplay(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  color: Colors.black12,
                                  thickness: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'O puedes ingresar con',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
                              ),
                              const Expanded(
                                child: Divider(
                                  color: Colors.black12,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 35,
                                  color: Colors.blue,
                                ),
                              ),
                              // const Icon(Icons.apple, size: 35,),),
                              // Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 35,
                                  color: Colors.black54,
                                ),
                              ),
                              //const Icon(Icons.facebook, size: 35, color: Colors.blue,),),
                              // Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.github,
                                  size: 35,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              //icon: const Icon(Icons.email, size: 35,),),
                              // Spacer(),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'No eres un miembro? ',
                                  style: GoogleFonts.redHatDisplay(
                                      color: Colors.black),
                                  children: [
                                WidgetSpan(
                                    child: GestureDetector(
                                  onTap: () {
                                    context.push('/register');
                                  },
                                  child: Text('Registrate',
                                      style: GoogleFonts.redHatDisplay(
                                          color: const Color(0xFF00B0FF),
                                          fontWeight: FontWeight.bold)),
                                ))
                              ])),
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
