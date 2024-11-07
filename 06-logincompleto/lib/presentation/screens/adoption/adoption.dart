import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdoptionAndCommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Registro de Adopciones
        ListTile(
          title: Text('Adoption Registry'),
          leading: FaIcon(FontAwesomeIcons.handHoldingHeart),
          subtitle: Text('Browse pets available for adoption'),
          onTap: () {
            // Acción para mostrar animales en adopción
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AdoptionRegistryScreen()),
            // );
          },
        ),
        Divider(),

        // Foro de Preguntas y Respuestas
        ListTile(
          title: Text('Questions & Answers Forum'),
          leading: FaIcon(FontAwesomeIcons.comments),
          subtitle: Text('Ask questions and get answers from experts'),
          onTap: () {
            // Acción para acceder al foro de preguntas y respuestas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ForumScreen()),
            // );
          },
        ),
        Divider(),

        // Conexiones con Entrenadores
        ListTile(
          title: Text('Trainer Connections'),
          leading: FaIcon(FontAwesomeIcons.userTie),
          subtitle: Text('Find professional trainers for your pet'),
          onTap: () {
            // Acción para acceder a la lista de entrenadores
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TrainerConnectionsScreen()),
            // );
          },
        ),
        Divider(),

        // Perfil de Mascota Personalizado
        ListTile(
          title: Text('Custom Pet Profile'),
          leading: FaIcon(FontAwesomeIcons.dog),
          subtitle: Text('Create and manage your pet\'s profile'),
          onTap: () {
            // Acción para crear o editar el perfil de una mascota
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PetProfileScreen()),
            // );
          },
        ),
        Divider(),
      ],
    );
  }
}
