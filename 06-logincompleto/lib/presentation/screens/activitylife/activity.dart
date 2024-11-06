import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityAndLifestyleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Registro de Actividad Física
        ListTile(
          title: Text('Physical Activity Log'),
          leading: FaIcon(FontAwesomeIcons.running),
          subtitle: Text('Track your pet\'s physical activities'),
          onTap: () {
            // Acción para registrar la actividad física de la mascota
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PhysicalActivityLogScreen()),
            // );
          },
        ),
        Divider(),

        // Marketplace
        ListTile(
          title: Text('Marketplace'),
          leading: FaIcon(FontAwesomeIcons.store),
          subtitle: Text('Shop pet products'),
          onTap: () {
            // Acción para acceder al mercado de productos para mascotas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => MarketplaceScreen()),
            // );
          },
        ),
        Divider(),

        // Recetas de Comida Casera
        ListTile(
          title: Text('Homemade Pet Recipes'),
          leading: FaIcon(FontAwesomeIcons.hamburger),
          subtitle: Text('Find healthy recipes for your pets'),
          onTap: () {
            // Acción para acceder a las recetas caseras para mascotas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => HomemadeRecipesScreen()),
            // );
          },
        ),
        Divider(),

        // Buscador de Peluquerías para Mascotas
        ListTile(
          title: Text('Pet Grooming Finder'),
          leading: FaIcon(FontAwesomeIcons.cut),
          subtitle: Text('Find pet grooming services nearby'),
          onTap: () {
            // Acción para acceder al buscador de peluquerías
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PetGroomingFinderScreen()),
            // );
          },
        ),
        Divider(),

        // Guarderías y Cuidadores de Mascotas
        ListTile(
          title: Text('Pet Daycare & Caregivers'),
          leading: FaIcon(FontAwesomeIcons.houseUser),
          subtitle: Text('Find daycare and caregivers for your pet'),
          onTap: () {
            // Acción para encontrar guarderías o cuidadores de mascotas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PetDaycareScreen()),
            // );
          },
        ),
        Divider(),

        // Programas de Cuidado Diario
        ListTile(
          title: Text('Daily Care Programs'),
          leading: FaIcon(FontAwesomeIcons.clock),
          subtitle: Text('Manage your pet\'s daily care routines'),
          onTap: () {
            // Acción para gestionar los programas de cuidado diario
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => DailyCareProgramsScreen()),
            // );
          },
        ),
        Divider(),
      ],
    );
  }
}
