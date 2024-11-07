import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VetAppointmentsScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Agenda de Citas Veterinarias
        ListTile(
          title: Text('Vet Appointment Schedule'),
          leading: FaIcon(FontAwesomeIcons.calendarAlt),
          subtitle: Text('Schedule appointments with your vet'),
          onTap: () {
            // Acción para programar una cita veterinaria
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ScheduleAppointmentScreen()),
            // );
          },
        ),
        Divider(),

        // Buscador de Veterinarios
        ListTile(
          title: Text('Find Veterinarians'),
          leading: FaIcon(FontAwesomeIcons.stethoscope),
          subtitle: Text('Search for veterinarians near you'),
          onTap: () {
            // Acción para buscar veterinarios
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => FindVetScreen()),
            // );
          },
        ),
        Divider(),

        // Funciones de Emergencia
        ListTile(
          title: Text('Emergency Functions'),
          leading: FaIcon(FontAwesomeIcons.plusCircle),
          subtitle: Text('Access emergency functions for your pet'),
          onTap: () {
            // Acción para acceder a funciones de emergencia
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => EmergencyFunctionsScreen()),
            // );
          },
        ),
        Divider(),

        // Sistema de Emergencia para Mascotas
        ListTile(
          title: Text('Pet Emergency System'),
          leading: FaIcon(FontAwesomeIcons.ambulance),
          subtitle: Text('Get instant emergency help for your pet'),
          onTap: () {
            // Acción para acceder al sistema de emergencias
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PetEmergencySystemScreen()),
            // );
          },
        ),
        Divider(),

        // Alertas de Mascotas Perdidas
        ListTile(
          title: Text('Lost Pet Alerts'),
          leading: FaIcon(FontAwesomeIcons.search),
          subtitle: Text('Get alerts for lost pets in your area'),
          onTap: () {
            // Acción para acceder a alertas de mascotas perdidas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => LostPetAlertsScreen()),
            // );
          },
        ),
        Divider(),
      ],
    );
  }
}
