import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("GPS y Ruta en Tiempo Real")),
        body: GPSLocationMap(),
      ),
    );
  }
}

class GPSLocationMap extends StatefulWidget {
  @override
  _GPSLocationMapState createState() => _GPSLocationMapState();
}

class _GPSLocationMapState extends State<GPSLocationMap> {
  double _zoom = 13.0;
  LatLng _center = LatLng(0.0, 0.0); // Ubicación inicial desconocida
  LatLng _currentPosition = LatLng(0.0, 0.0); // Ubicación inicial desconocida
  late StreamSubscription<Position> _positionStreamSubscription; // Para suscribirnos a la ubicación
  bool _isLocationReady = false; // Para saber si ya hemos obtenido la ubicación inicial
  List<LatLng> _routePoints = []; // Lista para almacenar los puntos de la ruta
  MapController mapController = MapController();
  @override
  void initState() {
    super.initState();
    _requestPermission(); // Solicitamos los permisos de ubicación
  }

  // Función para solicitar permisos de ubicación
  Future<void> _requestPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      _getInitialLocation(); // Si el permiso es concedido, obtenemos la ubicación inicial
      _startTracking(); // Comienza a seguir la ubicación
    } else {
      print('Permiso de ubicación no concedido');
    }
  }

  // Obtener la ubicación inicial del usuario
  Future<void> _getInitialLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude); // Actualizamos la posición inicial
      _center = _currentPosition; // Movemos el mapa al centro de la ubicación actual
      _isLocationReady = true; // Marcamos que la ubicación ya está lista
      _routePoints.add(_currentPosition); // Añadimos el punto inicial a la ruta
    });
  }

  // Comienza a seguir la ubicación del usuario
  void _startTracking() {
    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: LocationSettings(
        // timeLimit: const Duration(seconds: 5)
        accuracy: LocationAccuracy.high,
        distanceFilter: 10, // Solo actualiza la posición si el usuario se mueve más de 10 metros
      ),
    ).listen((Position position) {
      setState(() {
        _currentPosition = LatLng(position.latitude, position.longitude); // Actualizamos la ubicación
        _center = _currentPosition; // Movemos el mapa al nuevo centro
        _routePoints.add(_currentPosition); // Añadimos el nuevo punto a la ruta

        mapController.move(_currentPosition, _zoom);
      });
    });
  }

  @override
  void dispose() {
    _positionStreamSubscription.cancel(); // Cancelamos la suscripción cuando el widget se destruye
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isLocationReady
        ? FlutterMap(
          // mapController: mapController,
            options: MapOptions(
              initialCenter: _center,
              initialZoom: _zoom,
              maxZoom: 18.0,
              minZoom: 1.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                // subdomains: ['a', 'b', 'c'],
              ),
              // Capa de marcador para mostrar la posición actual
              MarkerLayer(
                markers: [
                  Marker(
                    point: _currentPosition,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.teal,
                      size: 20,
                    ),
                  ),
                ],
              ),
              // Capa para la ruta (línea) entre los puntos
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: _routePoints, // Lista de puntos para la ruta
                    strokeWidth: 4.0,
                    color: Colors.blue, // Color de la ruta
                  ),
                ],
              ),
            ],
          )
        : Center(child: CircularProgressIndicator()); // Muestra el cargando mientras obtenemos la ubicación
  }
}
