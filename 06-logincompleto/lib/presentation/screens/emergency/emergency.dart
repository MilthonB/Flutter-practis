import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergenciesAndSecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // Función de "Mascota Perdida"
        ListTile(
          title: Text('Lost Pet Function'),
          leading: FaIcon(FontAwesomeIcons.paw),
          subtitle: Text('Report and search for lost pets'),
          onTap: () {
            // Acción para la funcionalidad de mascotas perdidas
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => LostPetFunctionScreen()),
            // );
          },
        ),
        Divider(),

        // Alertas de Productos
        ListTile(
          title: Text('Product Alerts'),
          leading: FaIcon(FontAwesomeIcons.bell),
          subtitle: Text('Receive alerts for pet product offers'),
          onTap: () {
            // Acción para recibir alertas de productos
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ProductAlertsScreen()),
            // );
          },
        ),
        Divider(),

        // Integración con Wearables
        ListTile(
          title: Text('Wearables Integration'),
          // leading: FaIcon(FontAwesomeIcons.watch),
          subtitle: Text('Connect wearables to track pet health'),
          onTap: () {
            // Acción para la integración con wearables
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => WearablesIntegrationScreen()),
            // );
          },
        ),
        Divider(),
      ],
    );
  }
}
