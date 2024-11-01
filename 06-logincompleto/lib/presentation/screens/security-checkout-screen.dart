import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityCheckoutScreen extends StatefulWidget {
  const SecurityCheckoutScreen({super.key});

  @override
  State<SecurityCheckoutScreen> createState() => _SecurityCheckoutScreenState();
}

class _SecurityCheckoutScreenState extends State<SecurityCheckoutScreen> {
   @override
  Widget build(BuildContext context) {
    final List<TextEditingController> _controllers = List.generate(6, (_) => TextEditingController()); 
    final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SizedBox.expand(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF00B0FF)
              ),
              child: SafeArea(
                child: Container(

                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: SingleChildScrollView(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                      const SizedBox(height: 20,),
                      Center(child: SvgPicture.asset('assets/images/securitycheckup/security.svg', height: 130,)),
                      // const Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: CircleAvatar(
                      //     maxRadius: 50,
                      //     backgroundColor: Colors.blue,
                      //     child: CircleAvatar(
                      //       maxRadius: 45,
                      //       backgroundColor: Colors.white,
                      //       child: Icon(Icons.lock_clock_sharp, color: Colors.blue, size: 60,),
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 30,),
                      Text(
                        'Security Checkup',
                        style:
                            GoogleFonts.redHatDisplay(color: Colors.blue, fontSize: 30),
                      ),
                      Text(
                        'It is necessary to verify the otp to confirm your data',
                        style: GoogleFonts.redHatDisplay(fontSize: 17),
                      ),
                      const SizedBox(height: 35,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enter the verification code we just sent you on your email address',
                          style: GoogleFonts.redHatDisplay(fontSize: 15),
                        ),
                      ),
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(6, (index) {
                          return Container(
                            width: 40,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            child: TextFormField(
                              controller: _controllers[index],
                              textAlign: TextAlign.center,
                              focusNode: _focusNodes[index],
                              // keyboardType: TextInputType.number,
                              maxLength: 1,
                              cursorColor: Colors.black,
                              style: GoogleFonts.redHatDisplay(color: Colors.black),
                              decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black
                                  )
                                ),
                                counterText: ''
                              ),
                              onChanged: (value) {
                                if(value.length == 1  && index < 5){
                                  FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
                                }
                              },
                            ),
                          );
                        },),
                      ),
                      const SizedBox(height: 10.0,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: RichText(
                          text: TextSpan(
                            text: 'If you do not get  the code ',
                            style: GoogleFonts.redHatDisplay(color: Colors.black),
                            children: [
                              TextSpan(
                                text: 'Resent Now',
                                style: GoogleFonts.redHatDisplay(color: Colors.red, fontWeight: FontWeight.w600)
                              )
                            ]
                        )),
                      ),
                      const SizedBox(height: 30,),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)
                            )
                          ),
                          onPressed: () {
                          
                        }, child: Text('Confirm OTP', style: GoogleFonts.redHatDisplay(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),)),
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already has account?   ',
                                  style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w100, color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Log in',
                                      style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold, color: Colors.black)
                                    )
                                  ]
                                )
                              ),
                            ),
                    ],
                  ),
                          ),
                        ),
                ),
              ),
            ),
          )),
    );
  }
}