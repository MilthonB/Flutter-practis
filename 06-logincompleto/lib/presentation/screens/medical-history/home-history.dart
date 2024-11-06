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
          actions: [],
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
                        const FaIcon(
                          FontAwesomeIcons.handPeace,
                          size: 20,
                          color: Color.fromARGB(255, 223, 176, 4),
                        ),
                        SizedBox(
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
                            border: Border.all(color: Colors.amber, width: 2),
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
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/home/mascota1.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      10), // Espacio entre el contenedor y el nombre
                              Text(
                                'Rex', // Nombre de la mascota, lo puedes cambiar
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Color del texto
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/home/mascota2.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      10), // Espacio entre el contenedor y el nombre
                              Text(
                                'Tortilla', // Nombre de la mascota, lo puedes cambiar
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Color del texto
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/home/mascota3.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      10), // Espacio entre el contenedor y el nombre
                              Text(
                                'Venado', // Nombre de la mascota, lo puedes cambiar
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Color del texto
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.black, width: 1)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'assets/images/home/mascota4.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      10), // Espacio entre el contenedor y el nombre
                              Text(
                                'Jack', // Nombre de la mascota, lo puedes cambiar
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Color del texto
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 210, 237, 234),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: FaIcon(
                                    FontAwesomeIcons.paw,
                                    size: 25,
                                  ))),
                              const SizedBox(
                                  height:
                                      10), // Espacio entre el contenedor y el nombre
                              Text(
                                '', // Nombre de la mascota, lo puedes cambiar
                                style: GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black, // Color del texto
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Nombre: Rex', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                                Text('Especie: Canino', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                                Text('Sexo: Macho', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                                Text('Edad: 5 años', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                                Text('Status: Saludable', style: GoogleFonts.redHatDisplay(fontWeight: FontWeight.w800, fontSize: 16, color: Colors.white),),
                                ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    // iconColor: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                    )
                                  ),
                                  onPressed: () {
                                  
                                }, label: Text('Editar', style: GoogleFonts.redHatDisplay(),), icon: FaIcon(FontAwesomeIcons.paw),)
                              ],
                            ),
                            // Spacer(),
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.white, width: 3)
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/home/mascota1.jpg', fit: BoxFit.cover,),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
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
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10))),
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
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(10))),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                              width: 250,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red,
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
