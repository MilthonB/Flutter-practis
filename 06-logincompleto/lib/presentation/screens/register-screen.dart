import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Color(0xFFC9881E)
            ),
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        //iamgen centrada
                        Center(child: SvgPicture.asset('assets/images/register/register.svg', height: 140.0,)),
                        const SizedBox(height: 20,),
                        Text(
                          'Create Account',
                          style: GoogleFonts.redHatDisplay(
                              color: Color(0xFFF9A826),
                              fontWeight: FontWeight.w900,
                              fontSize: 25),
                        ),
                        Text(
                          'Create on account so you can  explore all the existing jobs',
                          style: GoogleFonts.redHatDisplay(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        SizedBox(height: 20,),
                        TextFormField(
                          autocorrect: false,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'Enter email',
                            hintStyle: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.w100, color: Colors.black38),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(style: BorderStyle.solid)),
                          ),
                        ),
                        SizedBox(height: 20,),
                  
                        TextFormField(
                          autocorrect: false,
                          obscureText: true,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.w100, color: Colors.black38),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(style: BorderStyle.solid)),
                          ),
                        ),
                        SizedBox(height: 20,),
                  
                        TextFormField(
                          obscureText: true,
                          autocorrect: false,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            hintText: 'Password confirm',
                            
                            hintStyle: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.w100, color: Colors.black38),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.black12, width: 1.0)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(style: BorderStyle.solid)),
                          ),
                        ),
                        
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: double.infinity,
                          height: 60.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom (
                              backgroundColor:Color(0xffF9A826),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)
                              )
                            ),
                            onPressed: () {
                          }, child: Text('Sing in', style: GoogleFonts.redHatDisplay( color: Colors.white, fontWeight: FontWeight.w800, fontSize: 18),)),
                        ),
                  
                        const SizedBox(height: 15,),
                        // Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(onPressed:() {                  
                          }, child: Text('Already have a account', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w700, color: Colors.black45),)),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}