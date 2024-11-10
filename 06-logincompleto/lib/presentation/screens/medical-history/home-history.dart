import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timelines/timelines.dart';

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

  final List<Map<String, String>> events = [
    {
      "date": "12 Noviembre 2024",
      "event": "No se reporto nada\nHubo un problemota\nnada de nadota"
    },
    {"date": "15 Noviembre 2024", "event": "nada de nadota"},
    {"date": "24 Noviembre 2024", "event": "Otro texto\nasu\nasi"},
  ];

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
        body: SingleChildScrollView(
          child: Column(
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
                              border: Border.all(
                                  color: Colors.teal[500]!, width: 2),
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
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.paw,
                            size: 20,
                            color: Colors.teal[900],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Tus Mascotas Registradas',
                            style: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                        ],
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
                                      border: Border.all(
                                          color: Colors.teal, width: 2),
                                      shape: BoxShape.circle),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.teal,
                                    radius: 30,
                                    child: FaIcon(
                                      FontAwesomeIcons.paw,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Add',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.teal, width: 2),
                                      shape: BoxShape.circle),
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/home/mascota1.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Galleta',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.teal, width: 2),
                                      shape: BoxShape.circle),
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/home/mascota2.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Torilla',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.teal, width: 2)),
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/home/mascota3.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Rex',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.teal, width: 2),
                                      shape: BoxShape.circle),
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/home/mascota4.jpg'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Jack',
                                  style: GoogleFonts.redHatDisplay(),
                                ),
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

                      Row(
                        children: [
                          Text(
                            'Vacunas administradas',
                            style: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.syringe,
                            size: 20,
                            color: Colors.teal[900],
                          ),
                        ],
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
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 140,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.teal[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldDog,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 140,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.teal[50]!,
                                              width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.red[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Rabia',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 140,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldDog,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 140,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.teal[50]!,
                                              width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.red[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Rabia',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 140,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldDog,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 140,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black12, width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Rabia',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.teal[900],
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.teal[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.teal[900],
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            // Container(
                            //   width: 70,
                            //   height: 70,
                            //   decoration: BoxDecoration(
                            //     color: Colors.blue[300],
                            //     borderRadius: BorderRadius.circular(10),
                            //   ),
                            //   child: Column(
                            //     children: [
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       const Center(
                            //           child: FaIcon(
                            //         FontAwesomeIcons.shieldVirus,
                            //         size: 35,
                            //         color: Colors.white,
                            //       )),
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       Text(
                            //         '12 Nov 24',
                            //         style: GoogleFonts.redHatDisplay(
                            //             color: Colors.white),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   width: 70,
                            //   height: 70,
                            //   decoration: BoxDecoration(
                            //       color: Colors.teal[300],
                            //       borderRadius: BorderRadius.circular(10)),
                            //   child: Column(
                            //     children: [
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       const Center(
                            //           child: FaIcon(
                            //         FontAwesomeIcons.shieldDog,
                            //         size: 35,
                            //         color: Colors.white,
                            //       )),
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       Text(
                            //         '12 Nov 24',
                            //         style: GoogleFonts.redHatDisplay(
                            //             color: Colors.white),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   width: 70,
                            //   height: 70,
                            //   decoration: BoxDecoration(
                            //       color: Colors.blue[300],
                            //       borderRadius: BorderRadius.circular(10)),
                            //   child: Column(
                            //     children: [
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       const Center(
                            //           child: FaIcon(
                            //         FontAwesomeIcons.shieldVirus,
                            //         size: 35,
                            //         color: Colors.white,
                            //       )),
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       Text(
                            //         '12 Nov 24',
                            //         style: GoogleFonts.redHatDisplay(
                            //             color: Colors.white),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // const SizedBox(
                            //   width: 10,
                            // ),
                            // Container(
                            //   width: 70,
                            //   height: 70,
                            //   decoration: BoxDecoration(
                            //       color: Colors.green[300],
                            //       borderRadius: BorderRadius.circular(10)),
                            //   child: Column(
                            //     children: [
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       const Center(
                            //           child: FaIcon(
                            //         FontAwesomeIcons.shieldDog,
                            //         size: 35,
                            //         color: Colors.white,
                            //       )),
                            //       const SizedBox(
                            //         height: 5,
                            //       ),
                            //       Text(
                            //         '12 Nov 24',
                            //         style: GoogleFonts.redHatDisplay(
                            //             color: Colors.white),
                            //       )
                            //     ],
                            //   ),
                            // ),
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
                      Row(
                        children: [
                          Text(
                            'Agenda -  historial',
                            style: GoogleFonts.redHatDisplay(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FaIcon(
                            FontAwesomeIcons.calendarDays,
                            size: 20,
                            color: Colors.teal[900],
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Card(
                        elevation: 5,
                        // color: Colors.indigo[100],
                        color: Colors.teal[100],
                        child: ListTile(
                          title: Row(
                            children: [
                              // SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.white,
                                child: const CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/images/home/profile.jpg'),
                                  radius: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jesus Ramirez',
                                    style: GoogleFonts.redHatDisplay(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueGrey),
                                  ),
                                  Text(
                                    'Veterinario',
                                    style: GoogleFonts.redHatDisplay(
                                        fontSize: 13, color: Colors.black45),
                                  ),
                                ],
                              ),
                              Spacer(),
                              FaIcon(
                                FontAwesomeIcons.paw,
                                color: Colors.white,
                              )
                            ],
                          ),
                          subtitle: Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          FaIcon(FontAwesomeIcons.calendar),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Viernes, 12 Febrero 2024',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.blueGrey[500]),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          FaIcon(FontAwesomeIcons.clock),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '3:00pm',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.blueGrey[500]),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: Text(
                                          'Cancelar',
                                          style: GoogleFonts.redHatDisplay(
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.teal[300],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {},
                                        child: Text(
                                          'Reagendar',
                                          style: GoogleFonts.redHatDisplay(
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      
                      Text(
                        'Historial sintomas',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                                            const SizedBox(
                        height: 10,
                      ),

                      // TimelineEvent( event: 'Event 1: Introduction', isFirst: true, isLast: false, ),
                      // TimelineEvent( event: 'Event 1: Introduction', isFirst: true, isLast: false, ),
                      // TimelineEvent( event: 'Event 1: Introduction', isFirst: true, isLast: false, ),

                      Divider(),

                      Center(child: Text("12, Febrero 2024", style: GoogleFonts.redHatDisplay(color: Colors.teal, fontWeight: FontWeight.bold),)),
                      Divider(),
                      Card(
                        color: Colors.white,
                        // shape: ,
                        elevation: 3,
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.circleInfo, color: Colors.teal,),
                          title: Text('9:00am - 10:30am', style: GoogleFonts.redHatDisplay(color: Colors.teal, fontWeight: FontWeight.bold),),
                          subtitle: Text('Jadeo excesivo, dificultad para respirar, tos, ruidos al respirar', style: GoogleFonts.redHatDisplay()),
                          trailing: Badge(
                            backgroundColor: Colors.teal,
                            child: FaIcon(FontAwesomeIcons.images, color: Colors.black45,),
                            label: Text('1'),
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.white, 
                        // shape: ,
                        elevation: 3,
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.circleInfo, color: Colors.teal,),
                          title: Text('12:00pm - 12:30am', style: GoogleFonts.redHatDisplay(color: Colors.teal, fontWeight: FontWeight.bold),),
                          subtitle: Text('Jadeo excesivo, dificultad para respirar, tos, ruidos al respirar', style: GoogleFonts.redHatDisplay(),),
                          trailing: Badge(
                            backgroundColor: Colors.teal,
                            child: FaIcon(FontAwesomeIcons.images, color: Colors.black45,),
                            label: Text('1'),
                          )
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        // shape: ,
                        elevation: 3,
                        child: ListTile(
                          leading: FaIcon(FontAwesomeIcons.circleInfo, color: Colors.teal,),
                          title: Text('7:00pm - 10:30pm', style: GoogleFonts.redHatDisplay(color: Colors.teal, fontWeight: FontWeight.bold),),
                          subtitle: Text('Jadeo excesivo, dificultad para respirar, tos, ruidos al respirar',style: GoogleFonts.redHatDisplay()),
                          trailing: Badge(
                            backgroundColor: Colors.teal,
                            child: FaIcon(FontAwesomeIcons.images, color: Colors.black45,),
                            label: Text('1'),
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      
                      Text(
                        'Ultima visita medica',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                                            const SizedBox(
                        height: 10,
                      ),

                      Card(
                        color: Colors.blueGrey[800],
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              CircleAvatar(
                                backgroundColor: Colors.teal[300],
                                radius: 26,
                                child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/home/profile.jpg'),
                                radius: 25,
                                                          ),
                              ),
                              Column(
                                children: [
                                  Text('Animal Veterinario', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold,color: Colors.teal[300]),),
                                  Text('Mvz. Jesus Armenta', style: GoogleFonts.redHatDisplay(fontSize: 15, color: Colors.white)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text('NO:1120345', style: GoogleFonts.redHatDisplay(fontSize: 12,color: Colors.white),),
                                  Text('03-15-24', style: GoogleFonts.redHatDisplay(fontSize: 12,color: Colors.white),),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Text('Mvz. Jesus Armenta', style: GoogleFonts.redHatDisplay()),
                              //     SizedBox(width: 10,),
                              //     Text('Fecha: 03/15/24', style: GoogleFonts.redHatDisplay(),),
                              //   ],
                              // ),
                                Center(child: Text('Clinica y hospital veterinario', style: GoogleFonts.redHatDisplay(color: Colors.teal[300]),)),
                              Divider(),
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.paw, size: 15,color: Colors.teal[200],),
                                    SizedBox(width: 10,),
                                    Text('Paciente: Mily', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                                    Spacer(),
                                    Text('Edad: 5 Años', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                                    Spacer(),
                                    Text('Peso: 45kg', style: GoogleFonts.redHatDisplay(color: Colors.white),),

                                  ],
                                ),
                                Row(
                                  children: [
                                    FaIcon(FontAwesomeIcons.solidUser, size: 15,color: Colors.teal[200]),
                                    SizedBox(width: 10,),
                                    Text('Propientario: Alejandro Ramirez', style: GoogleFonts.redHatDisplay(color: Colors.white),),
                                  ],
                                ),
                              Divider(),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.teal[600],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      )   
                                    ),
                                    onPressed: () {
                                    
                                  }, child: Text('Ver mas', style: GoogleFonts.redHatDisplay(color: Colors.white, fontWeight: FontWeight.bold),)),
                                )
                            ],
                          ),
                        ),
                      ),

                                          const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'Recordatorios de este mes',
                        style: GoogleFonts.redHatDisplay(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54),
                      ),
                                            const SizedBox(
                        height: 10,
                      ),

                      // Expanded(child: CalendarScreen()),


                      Card(
                        color: Colors.blueGrey[400],
                        child: ListTile(
                          title: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('12', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),),
                                    Text('FEB', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Text('Pastilla para el control de las pulgas',maxLines: 3, overflow: TextOverflow.ellipsis, style: GoogleFonts.redHatDisplay( color: Colors.white),)),
                              FaIcon(FontAwesomeIcons.shieldDog, color: Colors.white,size: 30,),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey[400],
                        child: ListTile(
                          title: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('12', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),),
                                    Text('FEB', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Text('Pastilla para el control de las pulgas',maxLines: 3, overflow: TextOverflow.ellipsis, style: GoogleFonts.redHatDisplay( color: Colors.white),)),
                              FaIcon(FontAwesomeIcons.shieldDog, color: Colors.white,size: 30,),
                            ],
                          ),
                        ),
                      ),Card(
                        color: Colors.blueGrey[400],
                        child: ListTile(
                          title: Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('12', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),),
                                    Text('FEB', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Text('Pastilla para el control de las pulgas',maxLines: 3, overflow: TextOverflow.ellipsis, style: GoogleFonts.redHatDisplay( color: Colors.white),)),
                              FaIcon(FontAwesomeIcons.shieldDog, color: Colors.white,size: 30,),
                            ],
                          ),
                        ),
                      ),

                  const SizedBox(
                        height: 10,
                      ),

                      Text(
                        'Historial de desparacitacion',
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
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 175,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldVirus,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 175,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.teal[50]!,
                                              width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.red[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Desparacitacion',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 175,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldVirus,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 175,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.teal[50]!,
                                              width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.red[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Desparacitacion',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Stack(children: [
                                  Align(
                                    child: Container(
                                      width: 175,
                                      height: 70,
                                      // margin: EdgeInsets.only(left: 50),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Center(
                                              child: FaIcon(
                                            FontAwesomeIcons.shieldVirus,
                                            size: 35,
                                            color: Colors.white,
                                          )),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '12 Nov 24',
                                            style: GoogleFonts.redHatDisplay(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Container(
                                      height: 120,
                                      width: 175,
                                      margin: const EdgeInsets.only(
                                          left: 0, top: 45),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.black12, width: 2)),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.viruses,
                                                color: Colors.blue[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                'Desparacitacion',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.teal[900],
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              FaIcon(
                                                FontAwesomeIcons.calendarDays,
                                                color: Colors.teal[100],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                '12-nov-2024',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.teal[900],
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.blueGrey[500],
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text(
                                                'Detalles',
                                                style:
                                                    GoogleFonts.redHatDisplay(
                                                        color: Colors.white),
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                      // TableCalendar(
                      //   focusedDay: DateTime.now(), 
                      //   firstDay: DateTime.now(), 
                      //   lastDay: DateTime.now()
                      // ),


                      // Container(
                      //   height: 300,
                      //   child: Timeline.tileBuilder(
                      //     builder: TimelineTileBuilder.fromStyle(
                      //       contentsAlign: ContentsAlign.basic,
                      //       contentsBuilder: (context, index) => Padding(
                      //         padding: const EdgeInsets.all(24.0),
                      //         child: Text('Timeline Event $index'),
                      //       ),
                      //       itemCount: 3,
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),

                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       // SizedBox(
                      //       //   height: 160,
                      //       //   width: 390,
                      //       //   child: Card(
                      //       //     color: Colors.blue[50],
                      //       //     elevation: 5,
                      //       //     child: ListTile(
                      //       //       title: Text('data')
                      //       //     ),
                      //       //   ),
                      //       // ),

                      //       // Container(
                      //       //   width: 320,
                      //       //   height: 116,
                      //       //   decoration: BoxDecoration(
                      //       //     color: Colors.blue[100],
                      //       //     borderRadius: BorderRadius.circular(10),
                      //       //   ),
                      //       //   child: Column(
                      //       //     children: [
                      //       //           const SizedBox(height: 6,),
                      //       //       Row(
                      //       //         // mainAxisAlignment: MainAxisAlignment.start,
                      //       //         crossAxisAlignment: CrossAxisAlignment.start,
                      //       //         children: [
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 70,
                      //       //             decoration: BoxDecoration(
                      //       //               border: Border.all(color: Colors.blue[200]!, width: 4),
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Column(
                      //       //               mainAxisAlignment: MainAxisAlignment.center,
                      //       //               children: [
                      //       //                 Text('12', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 Text('FEB', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 // Text('2024'),
                      //       //               ],
                      //       //             ),
                      //       //           ),
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 220,
                      //       //             decoration: BoxDecoration(
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //               border: Border.all(color: Colors.blue[200]!, width: 4),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Padding(
                      //       //               padding: const EdgeInsets.all(8.0),
                      //       //               child: Column(
                      //       //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //       //                 children: [
                      //       //                   const SizedBox(height: 10,),
                      //       //                     Text('Vacunacion programada', style: GoogleFonts.redHatDisplay(color: Colors.blue, fontWeight: FontWeight.w500),),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.paw, size: 15,color: Colors.blue,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Nombre: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Galletita ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.blue)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Nombre: Galleta', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.userDoctor, size: 15, color: Colors.blue,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Veterinario: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Jesus Ramirez',
                      //       //                                 style: GoogleFonts.redHatDisplay( color: Colors.blue)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Veterinario: Jesus Ramiro', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //           )
                      //       //         ],
                      //       //       ),
                      //       //       const SizedBox(height: 10,),
                      //       //       const Row(
                      //       //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //       //         children: [
                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 160,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.blue[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.calendarDays, color: Colors.blue,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('Lunes - 19 Enero', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),

                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 120,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.blue[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.clock, color: Colors.blue,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('9:30Am', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),
                      //       //         ],
                      //       //       )
                      //       //     ],
                      //       //   )
                      //       // ),

                      //       // const SizedBox(width: 10,),

                      //       // Container(
                      //       //   width: 320,
                      //       //   height: 116,
                      //       //   decoration: BoxDecoration(
                      //       //     color: Colors.teal,
                      //       //     borderRadius: BorderRadius.circular(10),
                      //       //   ),
                      //       //   child: Column(
                      //       //     children: [
                      //       //           const SizedBox(height: 6,),
                      //       //       Row(
                      //       //         // mainAxisAlignment: MainAxisAlignment.start,
                      //       //         crossAxisAlignment: CrossAxisAlignment.start,
                      //       //         children: [
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 70,
                      //       //             decoration: BoxDecoration(
                      //       //               border: Border.all(color: Colors.teal[200]!, width: 4),
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Column(
                      //       //               mainAxisAlignment: MainAxisAlignment.center,
                      //       //               children: [
                      //       //                 Text('12', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 Text('FEB', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 // Text('2024'),
                      //       //               ],
                      //       //             ),
                      //       //           ),
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 220,
                      //       //             decoration: BoxDecoration(
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //               border: Border.all(color: Colors.teal[200]!, width: 4),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Padding(
                      //       //               padding: const EdgeInsets.all(8.0),
                      //       //               child: Column(
                      //       //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //       //                 children: [
                      //       //                   const SizedBox(height: 10,),
                      //       //                     Text('Vacunacion programada', style: GoogleFonts.redHatDisplay(color: Colors.teal, fontWeight: FontWeight.w500),),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.paw, size: 15,color: Colors.teal,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Nombre: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Galletita ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.teal)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Nombre: Galleta', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.userDoctor, size: 15, color: Colors.teal,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Veterinario: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Jesus Ramirez',
                      //       //                                 style: GoogleFonts.redHatDisplay( color: Colors.teal)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Veterinario: Jesus Ramiro', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //           )
                      //       //         ],
                      //       //       ),
                      //       //       const SizedBox(height: 10,),
                      //       //       const Row(
                      //       //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //       //         children: [
                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 160,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.teal[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.calendarDays, color: Colors.teal,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('Lunes - 19 Enero', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),

                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 120,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.teal[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.clock, color: Colors.teal,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('9:30Am', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),
                      //       //         ],
                      //       //       )
                      //       //     ],
                      //       //   )
                      //       // ),
                      //       // const SizedBox(width: 10,),
                      //       // Container(
                      //       //   width: 320,
                      //       //   height: 116,
                      //       //   decoration: BoxDecoration(
                      //       //     color: Colors.orange[100],
                      //       //     borderRadius: BorderRadius.circular(10),
                      //       //   ),
                      //       //   child: Column(
                      //       //     children: [
                      //       //           const SizedBox(height: 6,),
                      //       //       Row(
                      //       //         // mainAxisAlignment: MainAxisAlignment.start,
                      //       //         crossAxisAlignment: CrossAxisAlignment.start,
                      //       //         children: [
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 70,
                      //       //             decoration: BoxDecoration(
                      //       //               border: Border.all(color: Colors.orange[200]!, width: 4),
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Column(
                      //       //               mainAxisAlignment: MainAxisAlignment.center,
                      //       //               children: [
                      //       //                 Text('12', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 Text('FEB', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.bold),),
                      //       //                 // Text('2024'),
                      //       //               ],
                      //       //             ),
                      //       //           ),
                      //       //           const SizedBox(width: 10,),
                      //       //           Container(
                      //       //             height: 100,
                      //       //             width: 220,
                      //       //             decoration: BoxDecoration(
                      //       //               borderRadius: BorderRadius.circular(10),
                      //       //               border: Border.all(color: Colors.orange[200]!, width: 4),
                      //       //             color: Colors.white,
                      //       //             ),
                      //       //             child: Padding(
                      //       //               padding: const EdgeInsets.all(8.0),
                      //       //               child: Column(
                      //       //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //       //                 children: [
                      //       //                   const SizedBox(height: 10,),
                      //       //                     Text('Vacunacion programada', style: GoogleFonts.redHatDisplay(color: Colors.orange, fontWeight: FontWeight.w500),),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.paw, size: 15,color: Colors.orange,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Nombre: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Galletita ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.orange)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Nombre: Galleta', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                     Row(
                      //       //                       children: [
                      //       //                         const FaIcon(FontAwesomeIcons.userDoctor, size: 15, color: Colors.orange,),
                      //       //                         const SizedBox(width: 5,),
                      //       //                         RichText(
                      //       //                           text: TextSpan(
                      //       //                             children: [
                      //       //                               TextSpan(
                      //       //                                 text: 'Veterinario: ',
                      //       //                                 style: GoogleFonts.redHatDisplay(color: Colors.black)
                      //       //                               ),
                      //       //                               TextSpan(
                      //       //                                 text: 'Jesus Ramirez',
                      //       //                                 style: GoogleFonts.redHatDisplay( color: Colors.orange)
                      //       //                               )
                      //       //                             ]
                      //       //                           )
                      //       //                         ),
                      //       //                         // Text('Veterinario: Jesus Ramiro', style: GoogleFonts.redHatDisplay(color: Colors.black, fontWeight: FontWeight.w500),),
                      //       //                       ],
                      //       //                     ),
                      //       //                 ],
                      //       //               ),
                      //       //             ),
                      //       //           )
                      //       //         ],
                      //       //       ),
                      //       //       const SizedBox(height: 10,),
                      //       //       const Row(
                      //       //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //       //         children: [
                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 160,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.orange[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.calendarDays, color: Colors.orange,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('Lunes - 19 Enero', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),

                      //       //           // Container(
                      //       //           //   height: 50,
                      //       //           //   width: 120,
                      //       //           //   decoration: BoxDecoration(
                      //       //           //     borderRadius: BorderRadius.circular(10),
                      //       //           //     border: Border.all(color: Colors.orange[200]!, width: 4),

                      //       //           //   color: Colors.white,
                      //       //           //   ),
                      //       //           //   child: Row(
                      //       //           //     children: [
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       FaIcon(FontAwesomeIcons.clock, color: Colors.orange,),
                      //       //           //       SizedBox(width: 10,),
                      //       //           //       Text('9:30Am', style: GoogleFonts.redHatDisplay(color: Colors.black),)
                      //       //           //     ],
                      //       //           //   ),
                      //       //           // ),
                      //       //         ],
                      //       //       )
                      //       //     ],
                      //       //   )
                      //       // ),

                      //       const SizedBox(
                      //         width: 20,
                      //       ),

                      //       // Container(
                      //       //     width: 250,
                      //       //     height: 100,
                      //       //     decoration: BoxDecoration(
                      //       //         color: Colors.purple[50],
                      //       //         borderRadius: BorderRadius.circular(10))),
                      //       // const SizedBox(
                      //       //   width: 20,
                      //       // ),
                      //       // Container(
                      //       //     width: 250,
                      //       //     height: 100,
                      //       //     decoration: BoxDecoration(
                      //       //         color: Colors.red[50],
                      //       //         borderRadius: BorderRadius.circular(10))),
                      //     ],
                      //   ),
                      // ),

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
                      // Container(
                      //   width: 350,
                      //   height:
                      //       2, // Grosor del divisor entre las pestañas (dividerHeight)
                      //   // color: Colors.black12, // Color del divisor
                      //   color: Colors.white, // Color del divisor
                      // ),
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

class TimelineEvent extends StatelessWidget {
  final String event;
  final bool isFirst;
  final bool isLast;

  TimelineEvent({
    required this.event,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Conector superior, solo se muestra si no es el primer evento
            if (!isFirst)
              Container(
                width: 4,
                height: 30,
                color: Colors.grey,
              ),
            // Icono del evento
            Icon(
              Icons.circle,
              size: 10,
              color: Colors.blue,
            ),
            // Conector inferior, solo se muestra si no es el último evento
            if (!isLast)
              Container(
                width: 4,
                height: 30,
                color: Colors.grey,
              ),
          ],
        ),
        SizedBox(width: 8),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                constraints: BoxConstraints(minHeight: 30), // Asegura que el contenedor tenga una altura mínima
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text('asdasdasdakjsbaishcbasiduhasodhjadjahsdijaslishdgflhsggdlfjSGHDLFjhdkljaHSLDJHieufhldcbsEVBLWIJDBCLjcbskl;dcvjdjckjhsdkjfhsdkfjshdkfjshfkjhkhkjhdkfjshkfjshdkfjhsdfhsfwewifhksdjskdjfhskfjhskd'),
              );
            },
          ),
        ),
      ],
    );
  }
}




class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;
  late Map<DateTime, List<String>> _events; // Mapa de eventos
  late Map<DateTime, Color> _dayColors; // Mapa de colores por día

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _selectedDay = DateTime.now();
    _events = {};
    _dayColors = {};

    // Cargar algunos eventos de ejemplo (esto puede venir de una base de datos, etc.)
    _addEvent(DateTime.utc(2024, 11, 5), 'Reunión de equipo');
    _addEvent(DateTime.utc(2024, 11, 12), 'Entrega de informe');
    _addEvent(DateTime.utc(2024, 11, 15), 'Cita médica');

    // Colorear algunos días
    _colorDay(DateTime.utc(2024, 11, 5), Colors.green);
    _colorDay(DateTime.utc(2024, 11, 12), Colors.blue);
    _colorDay(DateTime.utc(2024, 11, 15), Colors.red);
  }

  // Función para agregar un evento a un día
  void _addEvent(DateTime day, String event) {
    setState(() {
      if (_events[day] == null) {
        _events[day] = [];
      }
      _events[day]?.add(event);
    });
  }

  // Función para asignar un color a un día
  void _colorDay(DateTime day, Color color) {
    setState(() {
      _dayColors[day] = color;
    });
  }

  // Mostrar un diálogo con los pendientes de un día
  void _showEventDialog(DateTime day) {
    List<String>? dayEvents = _events[day];
    if (dayEvents == null || dayEvents.isEmpty) {
      dayEvents = ['No hay pendientes para este día.'];
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eventos del ${day.day}/${day.month}/${day.year}'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: dayEvents!.map((event) {
              return Text(event);
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario con Eventos'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              setState(() {
                _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Calendario
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
                // Mostrar el diálogo con los eventos cuando se toque un día
                if (_dayColors[selectedDay] != null) {
                  _showEventDialog(selectedDay);
                }
              },
              eventLoader: (day) {
                return _events[day] ?? [];
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                // Colorear los días según el mapa _dayColors
                markersMaxCount: 1,
                markerDecoration: BoxDecoration(
                  color: Colors.red, // Default color for markers
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false, // Ocultar el formato de vista de semana/mes
                titleCentered: true, // Centrar el título
              ),
            ),
          ],
        ),
      ),
    );
  }
}