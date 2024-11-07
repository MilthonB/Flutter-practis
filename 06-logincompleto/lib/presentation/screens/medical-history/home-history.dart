import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeHistoryScreen extends StatefulWidget {
  const HomeHistoryScreen({super.key});

  @override
  State<HomeHistoryScreen> createState() => _HomeHistoryStateScreen();
}

class _HomeHistoryStateScreen extends State<HomeHistoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
              child: Text(
            'AnimalSyncs',
            style: GoogleFonts.redHatDisplay(),
          )),
          // actions: [],
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // Parte superior del contenido
            Material(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.handPeace,
                          size: 20,
                          color: Colors.blueGrey[500],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Hola Milthon!',
                          style: GoogleFonts.redHatDisplay(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const Spacer(),
                        Container(
                          width: 40, // Ancho del cuadrado
                          height: 40, // Alto del cuadrado
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Colors.amber, // Color de fondo del contenedor
                            border: Border.all(color: Colors.teal[500]!, width: 2),
                            // borderRadius:
                            //     BorderRadius.circular(15), // Borde redondeado
                          ),
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/home/profile.jpg'),
                            radius: 20,
                          ),
                          //  SizedBox(child: Image.asset('assets/images/home/profile.jpg', fit: BoxFit.contain,)),
                          // const
                          // Center(
                          //   child: FaIcon(FontAwesomeIcons.userAstronaut,
                          //       color: Colors.black),
                          // ),
                        )
                      ],
                    ),
                    Text('Aqui tienes la informacion de tus mascotas',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                            fontSize: 15)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Mascotas Registradas',
                      style: GoogleFonts.redHatDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal, width: 2),
                                  shape: BoxShape.circle
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  radius: 30,
                                  child: FaIcon(FontAwesomeIcons.paw, color: Colors.white,),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Add', style: GoogleFonts.redHatDisplay(),),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal, width: 2),
                                  shape: BoxShape.circle
                                ),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/home/mascota1.jpg'),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Galleta', style: GoogleFonts.redHatDisplay(),),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal, width: 2),
                                  shape: BoxShape.circle
                                ),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/home/mascota2.jpg'),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Torilla', style: GoogleFonts.redHatDisplay(),),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.teal, width: 2)
                                ),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/home/mascota3.jpg'),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Rex', style: GoogleFonts.redHatDisplay(),),
                            ],
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal, width: 2),
                                  shape: BoxShape.circle
                                ),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/images/home/mascota4.jpg'),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('Jack', style: GoogleFonts.redHatDisplay(),),
                            ],
                          ),
                        ],
                      ),
                      // child: Row(
                      //   children: [
                      //     Column(
                      //       children: [
                      //         Container(
                      //           width: 70,
                      //           height: 70,
                      //           decoration: BoxDecoration(
                      //               color: Colors.cyan,
                      //               borderRadius: BorderRadius.circular(10),
                      //               border: Border.all(
                      //                   color: Colors.black, width: 1)),
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/home/mascota1.jpg',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //             height:
                      //                 10), // Espacio entre el contenedor y el nombre
                      //         Text(
                      //           'Rex', // Nombre de la mascota, lo puedes cambiar
                      //           style: GoogleFonts.redHatDisplay(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black, // Color del texto
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     const SizedBox(
                      //       width: 10,
                      //     ),
                      //     Column(
                      //       children: [
                      //         Container(
                      //           width: 70,
                      //           height: 70,
                      //           decoration: BoxDecoration(
                      //               color: Colors.deepPurple,
                      //               borderRadius: BorderRadius.circular(10),
                      //               border: Border.all(
                      //                   color: Colors.black, width: 1)),
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/home/mascota2.jpg',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //             height:
                      //                 10), // Espacio entre el contenedor y el nombre
                      //         Text(
                      //           'Tortilla', // Nombre de la mascota, lo puedes cambiar
                      //           style: GoogleFonts.redHatDisplay(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black, // Color del texto
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     const SizedBox(
                      //       width: 10,
                      //     ),
                      //     Column(
                      //       children: [
                      //         Container(
                      //           width: 70,
                      //           height: 70,
                      //           decoration: BoxDecoration(
                      //               color: Colors.brown,
                      //               borderRadius: BorderRadius.circular(10),
                      //               border: Border.all(
                      //                   color: Colors.black, width: 1)),
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/home/mascota3.jpg',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //             height:
                      //                 10), // Espacio entre el contenedor y el nombre
                      //         Text(
                      //           'Venado', // Nombre de la mascota, lo puedes cambiar
                      //           style: GoogleFonts.redHatDisplay(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black, // Color del texto
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     const SizedBox(
                      //       width: 10,
                      //     ),
                      //     Column(
                      //       children: [
                      //         Container(
                      //           width: 70,
                      //           height: 70,
                      //           decoration: BoxDecoration(
                      //               color: Colors.teal,
                      //               borderRadius: BorderRadius.circular(10),
                      //               border: Border.all(
                      //                   color: Colors.black, width: 1)),
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/home/mascota4.jpg',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         const SizedBox(
                      //             height:
                      //                 10), // Espacio entre el contenedor y el nombre
                      //         Text(
                      //           'Jack', // Nombre de la mascota, lo puedes cambiar
                      //           style: GoogleFonts.redHatDisplay(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black, // Color del texto
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     const SizedBox(
                      //       width: 10,
                      //     ),
                      //     Column(
                      //       children: [
                      //         Container(
                      //             width: 70,
                      //             height: 70,
                      //             decoration: BoxDecoration(
                      //               color: const Color.fromARGB(
                      //                   255, 210, 237, 234),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //             child: Center(
                      //                 child: FaIcon(
                      //               FontAwesomeIcons.paw,
                      //               size: 25,
                      //             ))),
                      //         const SizedBox(
                      //             height:
                      //                 10), // Espacio entre el contenedor y el nombre
                      //         Text(
                      //           '', // Nombre de la mascota, lo puedes cambiar
                      //           style: GoogleFonts.redHatDisplay(
                      //             fontSize: 16,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black, // Color del texto
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

       Card(
      elevation: 5,
      color: Colors.teal[50],
      child: ListTile(
        title: _buildHeader(),
        subtitle: _buildSubtitle(),
      ),
    ),

                    // Card(
                    //   elevation: 5,
                    //   color:  Colors.teal[50],
                    //   child: ListTile(
                    //     // leading: CircleAvatar(
                    //     //   radius: 30,
                    //     //   backgroundImage: AssetImage('assets/images/home/mascota1.jpg'),
                    //     // ), 
                        
                    //     // Icono de ardorno
                    //     // leading: FaIcon(FontAwesomeIcons.paw), // Icono de ardorno
                        // title: Row(
                        //   children: [
                        //     const CircleAvatar(
                        //   radius: 30,
                        //   backgroundImage: AssetImage('assets/images/home/mascota1.jpg'),
                        // ), 
                        // const SizedBox(width: 10,),
                        //     Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         Text('Datos de la mascota', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w600),),
                        //         Text('Nombre: Galleta', style: GoogleFonts.redHatDisplay(),),
                        //         Text('Edad: 4 año', style: GoogleFonts.redHatDisplay(),),
                        //       ],
                        //     ),
                    //     const Spacer(),
                            
                    //         const CircleAvatar(
                    //           backgroundColor: Colors.teal,
                    //           // radius: 20,
                    //           child: FaIcon(FontAwesomeIcons.dog, color: Colors.white,size: 18,)
                    //           ),
                    //           // const SizedBox(width: 10,)
                    //       ],
                    //     ), // Encabezado
                        
                    //     subtitle: Column(
                    //       // crossAxisAlignment: CrossAxisAlignment.end,
                    //       children: [
                    //         const SizedBox(height: 10,),
                    //         Row(
                    //           // crossAxisAlignment: CrossAxisAlignment.start,
                    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //           children: [
                    //             // const SizedBox(height: 10),
                    //             Container(
                    //               height: 50,
                    //               width: 170,
                    //               decoration: BoxDecoration(
                    //               color: Colors.teal,
                    //                 borderRadius: BorderRadius.circular(10)
                    //               ),
                    //               child: Row(
                    //                 children: [
                    //                   const SizedBox(width: 10,),
                    //                   const FaIcon(FontAwesomeIcons.calendarDays, color: Colors.white,),
                    //                   const SizedBox(width: 10,),
                    //                   Text('Lunes . 19 Enero', style: GoogleFonts.redHatDisplay( color: Colors.white),)
                    //                 ],
                    //               ),
                    //             ),
                    //             // const Spacer(),
                    //             Container(
                    //               height: 50,
                    //               width: 150,
                    //               decoration: BoxDecoration(
                    //               color: Colors.teal,
                    //                 borderRadius: BorderRadius.circular(10)
                    //               ),
                    //               child: Row(
                    //                 children: [
                    //                   const SizedBox(width: 10,),
                    //                   const FaIcon(FontAwesomeIcons.clock, color: Colors.white,),
                    //                   const SizedBox(width: 10,),
                    //                   Text('8:00 - 10:00', style: GoogleFonts.redHatDisplay( color: Colors.white),)
                    //                 ],
                    //               ),
                    //             ),
                    //             // Text('Nombre: Galleta', style: GoogleFonts.redHatDisplay(),),
                    //             // Text('Edad: 4 año', style: GoogleFonts.redHatDisplay(),),
                            
                    //           ],
                    //         ),
                            
                    //         const SizedBox(height: 10,),
                    //             Row(
                    //               children: [
                    //                 Expanded(
                    //                   child: ElevatedButton.icon(
                    //                     style: ElevatedButton.styleFrom(
                    //                       backgroundColor: Colors.blueGrey[500],
                    //                       iconColor: Colors.white,
                    //                       shape: RoundedRectangleBorder(
                    //                         borderRadius: BorderRadius.circular(10)
                    //                       )
                    //                     ),
                    //                     label: Text('Ver perfil', style: GoogleFonts.redHatDisplay( color: Colors.white),),
                    //                     icon: FaIcon(FontAwesomeIcons.bone),
                    //                     onPressed: () {
                                        
                    //                   }, ),
                    //                 ),
                    //               ],
                    //             )
                    //       ],
                    //     ), // datos de la mascota
                    //     // trailing: FaIcon(FontAwesomeIcons.paw), // Foto de la mascota
                    //   )
                    // ),

                    // Material(
                    //   elevation: 5,
                    //   borderRadius: BorderRadius.circular(10),
                    //   child: Container(
                    //     padding: const EdgeInsets.all(10),
                    //     width: double.infinity,
                    //     height: 190,
                    //     decoration: BoxDecoration(
                    //       color: Colors.teal,
                    //       borderRadius: BorderRadius.circular(10),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //       children: [
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text('Nombre: Rex', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    //             Text('Especie: Canino', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    //             Text('Sexo: Macho', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    //             Text('Edad: 5 años', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    //             Text('Status: Saludable', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                    //             ElevatedButton.icon(
                    //               style: ElevatedButton.styleFrom(
                    //                 // iconColor: Colors.purple,
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(5)
                    //                 )
                    //               ),
                    //               onPressed: () {
                                  
                    //             }, label: Text('Editar', style: GoogleFonts.redHatDisplay(),), icon: const FaIcon(FontAwesomeIcons.paw),)
                    //           ],
                    //         ),
                    //         // Spacer(),
                    //         Container(
                    //           height: 140,
                    //           width: 140,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             border: Border.all(color: Colors.white, width: 13)
                    //           ),
                    //           child: ClipRRect(
                    //             borderRadius: BorderRadius.circular(10),
                    //             child: Image.asset('assets/images/home/mascota1.jpg', fit: BoxFit.cover,),
                    //           ),
                    //         ),
                            
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Vacunas administradas',
                      style: GoogleFonts.redHatDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.teal[300],
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5,),

                                      Center(child: FaIcon(FontAwesomeIcons.shieldDog, size: 35,color: Colors.white,)),
                                      const SizedBox(height: 5,),
                          Text('12 Nov 24', style: GoogleFonts.redHatDisplay(color: Colors.white),)


                                    ],
                                  ),
                                      
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(10),),
                              child: Column(
                                children: [
                                      const SizedBox(height: 5,),

                                  Center(child: FaIcon(FontAwesomeIcons.shieldVirus, size: 35,color: Colors.white,)),
                                      const SizedBox(height: 5,),

                          Text('12 Nov 24', style: GoogleFonts.redHatDisplay(color: Colors.white),)

                                ],
                              ),
                          
                                  
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                      const SizedBox(height: 5,),

                                  Center(child: FaIcon(FontAwesomeIcons.shieldDog, size: 35,color: Colors.white,)),
                                      const SizedBox(height: 5,),
                          Text('12 Nov 24', style: GoogleFonts.redHatDisplay(color: Colors.white),)


                                ],
                              ),
                                  
                                  ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  const SizedBox(height: 5,),
                                  Center(child: FaIcon(FontAwesomeIcons.shieldVirus, size: 35,color: Colors.white,)),
                                  const SizedBox(height: 5,),
                          
                          Text('12 Nov 24', style: GoogleFonts.redHatDisplay(color: Colors.white),)
                                ],
                              ),
                                  
                                  ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.green[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  const SizedBox(height: 5,),
                          
                                  Center(child: FaIcon(FontAwesomeIcons.shieldDog, size: 35,color: Colors.white,)),
                                  const SizedBox(height: 5,),
                          
                          Text('12 Nov 24', style: GoogleFonts.redHatDisplay(color: Colors.white),)
                          
                                ],
                              ),
                                  
                                  ),
                          const SizedBox(
                            width: 10,
                          ),
                          // Container(
                          //     width: 70,
                          //     height: 70,
                          //     decoration: BoxDecoration(
                          //         color: Colors.amber,
                          //         borderRadius: BorderRadius.circular(10)),
                          //     child: Center(child: FaIcon(FontAwesomeIcons.shieldVirus, size: 35,color: Colors.white,)),
                                  
                          //         ),
                          // const SizedBox(
                          //   width: 10,
                          // ),
                          // Container(
                          //     width: 70,
                          //     height: 70,
                          //     decoration: BoxDecoration(
                          //         color: Colors.amber,
                          //         borderRadius: BorderRadius.circular(10)),
                          //     child: Center(child: FaIcon(FontAwesomeIcons.shieldVirus, size: 35,color: Colors.white,)),
                                  
                          //         ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Citas -  historial',
                      style: GoogleFonts.redHatDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.teal[50],
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.purple[50],
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red[50],
                                  borderRadius: BorderRadius.circular(10))),
                        ],
                      ),
                    ),
                    // TabBar(
                    //   labelStyle: GoogleFonts.redHatDisplay(
                    //       fontWeight: FontWeight.bold),
                    //   dividerColor: Colors.white,
                    //   overlayColor: const WidgetStatePropertyAll(Colors.white),
                    //   indicatorColor: Colors.blue,
                    //   labelColor: Colors.black,
                    //   unselectedLabelColor: Colors.black45,
                    //   padding: const EdgeInsets.only(left: 20, right: 20),
                    //   controller: _tabController,
                    //   tabs: const [
                    //     Tab(text: "Inicio"),
                    //     Tab(text: "Buscar"),
                    //     Tab(text: "Buscar"),
                    //   ],
                    // ),
                    Container(
                      width: 350,
                      height:
                          2, // Grosor del divisor entre las pestañas (dividerHeight)
                      // color: Colors.black12, // Color del divisor
                      color: Colors.white, // Color del divisor
                    ),
                  ],
                ),
              ),
            ),
        
            // Expanded para el TabBarView
            // Expanded(
            //   child: TabBarView(
            //     controller: _tabController,
            //     children: [
            //       Center(child: Text("Contenido de Inicio")),
            //       Center(child: Text("Contenido de Buscar")),
            //       Center(child: Text("Contenido de Buscar")),
            //     ],
            //   ),
            // ),
        
            // TabBar al final, dentro de un Material
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/home/mascota1.jpg'),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Datos de la mascota',
              style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w600),
            ),
            Text(
              'Nombre: Galleta',
              style: GoogleFonts.redHatDisplay(),
            ),
            Text(
              'Edad: 4 años',
              style: GoogleFonts.redHatDisplay(),
            ),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Colors.teal,
          child: FaIcon(
            FontAwesomeIcons.dog,
            color: Colors.white,
            size: 18,
          ),
        ),
      ],
    );
  }

    Widget _buildSubtitle() {
    return Column(
      children: [
        const SizedBox(height: 10),
        _buildInfoRow(),
        const SizedBox(height: 10),
        _buildActionButton(),
      ],
    );
  }

    Widget _buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInfoContainer(
          icon: FontAwesomeIcons.calendarDays,
          text: 'Lunes . 19 Enero',
        ),
        _buildInfoContainer(
          icon: FontAwesomeIcons.clock,
          text: '8:00 - 10:00',
        ),
      ],
    );
  }

  Widget _buildInfoContainer({required IconData icon, required String text}) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          FaIcon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            text,
            style: GoogleFonts.redHatDisplay(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey[500],
              iconColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            label: Text(
              'Ver perfil',
              style: GoogleFonts.redHatDisplay(color: Colors.white),
            ),
            icon: const FaIcon(FontAwesomeIcons.bone),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

}

// import 'package:flutter/material.dart';

// class HistorialMedicoScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Historial Médico de la Mascota'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           // Datos Básicos de la Mascota
//           ListTile(
//             title: Text('Datos Básicos de la Mascota'),
//             subtitle: Text('Nombre: Max | Especie: Perro | Edad: 5 años'),
//             leading: Icon(Icons.pets),
//           ),
//           Divider(),

//           // Historial de Vacunas
//           ExpansionTile(
//             title: Text('Historial de Vacunas'),
//             leading: Icon(Icons.medical_services),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Vacuna: Rabia'),
//                 subtitle: Text('Fecha: 01/05/2023'),
//               ),
//               ListTile(
//                 title: Text('Vacuna: Parvovirus'),
//                 subtitle: Text('Fecha: 15/03/2023'),
//               ),
//               ListTile(
//                 title: Text('Próxima vacuna'),
//                 subtitle: Text('Fecha: 01/05/2024'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Historial de Enfermedades
//           ExpansionTile(
//             title: Text('Historial de Enfermedades'),
//             leading: Icon(Icons.warning),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Enfermedad: Leishmaniasis'),
//                 subtitle: Text('Tratamiento: Antibióticos | Fechas: 2022'),
//               ),
//               ListTile(
//                 title: Text('Alergia: Polvo'),
//                 subtitle: Text('Reacción: Estornudos y picazón'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Tratamientos y Medicamentos
//           ExpansionTile(
//             title: Text('Tratamientos y Medicamentos'),
//             leading: Icon(Icons.abc_outlined),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Medicamento: Antibiótico'),
//                 subtitle: Text('Dosis: 20mg | Frecuencia: 2 veces al día'),
//               ),
//               ListTile(
//                 title: Text('Medicamento: Antiinflamatorio'),
//                 subtitle: Text('Dosis: 10mg | Frecuencia: 1 vez al día'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Exámenes y Pruebas
//           ExpansionTile(
//             title: Text('Exámenes y Pruebas'),
//             leading: Icon(Icons.pie_chart_sharp),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Examen: Análisis de sangre'),
//                 subtitle: Text('Resultados: Sin anomalías detectadas'),
//               ),
//               ListTile(
//                 title: Text('Examen: Radiografía de tórax'),
//                 subtitle: Text('Resultados: Sin problemas detectados'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Historia Quirúrgica
//           ExpansionTile(
//             title: Text('Historia Quirúrgica'),
//             leading: Icon(Icons.masks),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Cirugía: Esterilización'),
//                 subtitle: Text('Fecha: 01/08/2021'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Comportamiento y Hábitos
//           ExpansionTile(
//             title: Text('Comportamiento y Hábitos'),
//             leading: Icon(Icons.face),
//             children: <Widget>[
//               ListTile(
//                 title: Text('Comportamiento general: Calmado'),
//                 subtitle: Text('Hábitos alimenticios: Come 2 veces al día'),
//               ),
//               ListTile(
//                 title: Text('Comportamiento problemático: Ansiedad'),
//                 subtitle: Text('Descripción: Ladridos excesivos cuando queda solo'),
//               ),
//             ],
//           ),
//           Divider(),

//           // Información de Contacto del Veterinario
//           ListTile(
//             title: Text('Veterinario: Dr. Juan Pérez'),
//             subtitle: Text('Clínica: Veterinaria AnimalCare\nTeléfono: (555) 123-4567'),
//             leading: Icon(Icons.contact_phone),
//           ),
//           Divider(),

//           // Observaciones
//           ListTile(
//             title: Text('Observaciones'),
//             subtitle: Text('El perro se encuentra en perfecto estado general, pero requiere seguir con los controles periódicos.'),
//             leading: Icon(Icons.note),
//           ),
//         ],
//       ),
//     );
//   }
// }
