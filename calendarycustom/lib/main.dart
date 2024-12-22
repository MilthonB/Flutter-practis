import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: AgendaApp()));
}

class AgendaApp extends StatefulWidget {
  @override
  _AgendaAppState createState() => _AgendaAppState();
}

class _AgendaAppState extends State<AgendaApp> {
  // Fecha inicial (por ejemplo, diciembre de 2024)
  DateTime selectedDate = DateTime(2024, 12, 1);

  // Lista de fechas a resaltar
  final List<DateTime> highlightedDates = [
    DateTime(2024, 12, 20),
    DateTime(2024, 12, 25),
    DateTime(2024, 12, 30),
  ];

  // Mapa para guardar los colores de las fechas seleccionadas
  final Map<DateTime, Color> selectedDatesColors = {};

  // Fecha actualmente seleccionada para mostrar detalles
  DateTime? selectedDayForDetails;

  // Modo actual: 'week' para ver una semana, 'month' para ver todo el mes
  String viewMode = 'month';

  // Simulamos citas para el día seleccionado
  List<String> getCitasForSelectedDay(DateTime selectedDay) {
    // Esta es una lista de citas simuladas, en un caso real podrías obtener esto de una base de datos
    if (selectedDay.year == 2024 && selectedDay.month == 12) {
      if (selectedDay.day == 20) {
        return [
          "10:00 AM - Cita con el dentista",
          "2:00 PM - Reunión de trabajo",
        ];
      } else if (selectedDay.day == 25) {
        return ["9:00 AM - Cena con amigos"];
      } else {
        return ["8:00 AM - Desayuno", "5:00 PM - Cita médica"];
      }
    }
    return []; // No hay citas para otros días
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agenda Personalizada")),
      body: Column(
        children: [
          // Título del mes
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${selectedDate.month}/${selectedDate.year}",
              style: TextStyle(fontSize: 24),
            ),
          ),

          // Switch para alternar entre vista mensual y semanal
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ver Semana",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Switch(
                  value: viewMode == 'week', // Si está en modo "semana", el switch estará activado
                  onChanged: (bool newValue) {
                    setState(() {
                      viewMode = newValue ? 'week' : 'month'; // Cambiar entre semana y mes
                      if (viewMode == 'week') {
                        // Si está en vista semanal, mostrar la semana actual
                        selectedDate = DateTime.now();
                      }
                    });
                  },
                ),
                Text(
                  "Ver Mes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // Calendario en GridView
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, // 7 columnas (días de la semana)
                childAspectRatio: 1.0,
              ),
              itemCount: viewMode == 'month' ? _daysInMonth(selectedDate) : 7,  // Mostrar 7 días si es vista semanal
              itemBuilder: (context, index) {
                DateTime currentDay = viewMode == 'month'
                    ? _getDateFromIndex(index)  // Para vista mensual
                    : _getStartOfWeek().add(Duration(days: index));  // Para vista semanal
                bool isHighlighted = highlightedDates.any((highlightedDate) =>
                    highlightedDate.year == currentDay.year &&
                    highlightedDate.month == currentDay.month &&
                    highlightedDate.day == currentDay.day);
                bool isSelected = selectedDayForDetails != null &&
                    selectedDayForDetails!.year == currentDay.year &&
                    selectedDayForDetails!.month == currentDay.month &&
                    selectedDayForDetails!.day == currentDay.day;

                // Si el día ha sido seleccionado previamente, asignar el color guardado
                Color? dayColor = selectedDatesColors[currentDay];

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      // Establecer el día seleccionado para detalles
                      selectedDayForDetails = currentDay;
                      // Generar un color aleatorio para el día seleccionado
                      selectedDatesColors[currentDay] = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: dayColor ?? (isSelected
                          ? Colors.blueAccent // Color para fecha seleccionada
                          : isHighlighted
                              ? Colors.redAccent // Color para fechas resaltadas
                              : Colors.transparent),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),  // Curvatura de los bordes
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Mostrar las primeras dos letras del día de la semana
                        Text(
                          _getDayOfWeek(currentDay),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        // Mostrar el número del día
                        Text(
                          '${currentDay.day}',
                          style: TextStyle(
                            fontSize: 18,
                            color: isSelected || isHighlighted || dayColor != null
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Agregar un espacio entre el calendario y las citas
          SizedBox(height: 20),

          // Si hay un día seleccionado, mostrar las citas de ese día
          if (selectedDayForDetails != null) 
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Citas para el ${selectedDayForDetails!.toLocal().toString().split(' ')[0]}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  // Mostrar las citas
                  ...getCitasForSelectedDay(selectedDayForDetails!).map((cita) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.access_time, color: Colors.blue),
                            Text(cita, style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ),
            ),
        ],
      ),
    );
  }

  // Devuelve el número de días en el mes
  int _daysInMonth(DateTime date) {
    final firstDayOfMonth = DateTime(date.year, date.month, 1);
    final lastDayOfMonth = DateTime(date.year, date.month + 1, 0);
    return lastDayOfMonth.day;
  }

  // Devuelve la fecha correspondiente al índice de la grilla (mes)
  DateTime _getDateFromIndex(int index) {
    final firstDayOfMonth = DateTime(selectedDate.year, selectedDate.month, 1);
    return firstDayOfMonth.add(Duration(days: index));
  }

  // Devuelve la fecha del inicio de la semana (lunes) que contiene la fecha de hoy
  DateTime _getStartOfWeek() {
    // Ajustamos la fecha al inicio de la semana (lunes)
    DateTime startOfWeek = DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1));
    return DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day);
  }

  // Obtiene las primeras dos letras del día de la semana
  String _getDayOfWeek(DateTime date) {
    List<String> daysOfWeek = ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'];
    return daysOfWeek[date.weekday - 1]; // weekday empieza en 1 (lunes) hasta 7 (domingo)
  }
}
