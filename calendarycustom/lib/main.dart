import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(home: AgendaApp()));
}

class AgendaApp extends StatefulWidget {
  @override
  _AgendaAppState createState() => _AgendaAppState();
}

class _AgendaAppState extends State<AgendaApp> {
  // Fecha inicial (por ejemplo, diciembre de 2024)
  DateTime selectedDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  // Mapa para guardar las citas de cada día
  final Map<DateTime, List<Map<String, dynamic>>> dayCitas = {};

  // Fecha actualmente seleccionada para mostrar detalles
  DateTime? selectedDayForDetails = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  // Lista de horarios predefinidos para mostrar (horario militar de 6:00 a 18:00)
  List<String> availableTimes = [
    '06:00 - 07:00',
    '07:00 - 08:00',
    '08:00 - 09:00',
    '09:00 - 10:00',
    '10:00 - 11:00',
    '11:00 - 12:00',
    '12:00 - 13:00',
    '13:00 - 14:00',
    '14:00 - 15:00',
    '15:00 - 16:00',
    '16:00 - 17:00',
    '17:00 - 18:00',
  ];

  // Controlador del Switch (para alternar entre vista de semana y mes)
  bool showWeekView = false;

  // Función para obtener la semana actual (de lunes a domingo)
  List<DateTime> getWeekDates(DateTime date) {
    int weekday = date.weekday;
    DateTime startOfWeek = date.subtract(Duration(days: weekday - 1));
    List<DateTime> listweek = List.generate(7, (index) => startOfWeek.add(Duration(days: index)));
    print(listweek);
    return listweek;
  }

  // Simula obtener las citas para un día
  List<Map<String, dynamic>> getCitasForSelectedDay(DateTime selectedDay) {
    return dayCitas[selectedDay] ?? [];
  }

  // Verificar si una hora tiene una cita para un día
  bool isTimeTaken(DateTime selectedDay, String time) {
    List<Map<String, dynamic>> citas = dayCitas[selectedDay] ?? [];
    for (var cita in citas) {
      if (cita['time'] == time) {
        return true; // La hora ya está ocupada
      }
    }
    return false; // La hora está disponible
  }

  // Mostrar el cuadro de diálogo para agregar una cita
  void _showCitaDialog(DateTime selectedDay, String time) {
    final TextEditingController commentController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Agregar cita para el ${selectedDay.toLocal()}".split(' ')[0]),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("¿Qué quieres agregar?"),
              TextField(
                controller: commentController,
                decoration: InputDecoration(hintText: "Ingrese un comentario para la cita"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  // Agregar cita
                  if (dayCitas[selectedDay] == null) {
                    dayCitas[selectedDay] = [];
                  }
                  dayCitas[selectedDay]?.add({
                    'time': time,
                    'comment': commentController.text,
                  });
                });
                Navigator.pop(context);
              },
              child: Text("Guardar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
          ],
        );
      },
    );
  }

  // Mostrar el cuadro de diálogo para editar o eliminar la cita
  void _showEditCitaDialog(DateTime selectedDay, Map<String, dynamic> cita) {
    final TextEditingController commentController = TextEditingController(text: cita['comment']);
    String selectedTime = cita['time'];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Editar cita para el ${selectedDay.toLocal()}".split(' ')[0]),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: commentController,
                decoration: InputDecoration(hintText: "Editar comentario"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  // Actualizar cita
                  cita['comment'] = commentController.text;
                });
                Navigator.pop(context);
              },
              child: Text("Guardar cambios"),
            ),
            TextButton(
              onPressed: () {
                // Eliminar cita
                setState(() {
                  dayCitas[selectedDay]?.remove(cita);
                });
                Navigator.pop(context);
              },
              child: Text("Eliminar cita"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
          ],
        );
      },
    );
  }

  // Función para avanzar un mes, manteniendo el mismo día si es posible
  void _nextMonth() {
    setState(() {
      // Sumar un mes al mes actual
      DateTime nextMonth = DateTime(selectedDate.year, selectedDate.month + 1, selectedDate.day);
      
      // Si el día no existe en el siguiente mes (por ejemplo, 31 de enero), ajustamos al último día del mes siguiente
      if (nextMonth.month != selectedDate.month + 1) {
        // Ajustamos a la última fecha del mes siguiente
        selectedDate = DateTime(selectedDate.year, selectedDate.month + 2, 0); 
      } else {
        selectedDate = nextMonth;
      }
    });
  }

  // Función para retroceder un mes, manteniendo el mismo día si es posible
  void _prevMonth() {
    setState(() {
      // Restar un mes al mes actual
      DateTime prevMonth = DateTime(selectedDate.year, selectedDate.month - 1, selectedDate.day);
      
      // Si el día no existe en el mes anterior (por ejemplo, 31 de marzo a febrero), ajustamos al último día del mes anterior
      if (prevMonth.month != selectedDate.month - 1) {
        // Ajustamos a la última fecha del mes anterior
        selectedDate = DateTime(selectedDate.year, selectedDate.month, 0); 
      } else {
        selectedDate = prevMonth;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color colorContainer = Colors.white;

    // Determinar los días de la semana a mostrar
    List<DateTime> daysToDisplay;
    if (showWeekView) {
      daysToDisplay = getWeekDates(selectedDate); // Mostrar solo la semana actual
    } else {
      daysToDisplay = List.generate(
        DateTime(selectedDate.year, selectedDate.month + 1, 0).day,
        (index) => DateTime(selectedDate.year, selectedDate.month, index + 1),
      ); // Mostrar todo el mes
    }

    return Scaffold(
      appBar: AppBar(title: Text("Agenda Personalizada")),
      body: Column(
        children: [
          // Botones para navegar entre meses
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _prevMonth, // Función para retroceder un mes
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${DateFormat('MMMM yyyy').format(selectedDate)}", // Mostrar el mes y año seleccionados
                  style: TextStyle(fontSize: 24),
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: _nextMonth, // Función para avanzar un mes
              ),
            ],
          ),

          // Switch para alternar entre vista semanal y mensual
          SwitchListTile(
            title: Text("Ver semana en lugar de mes"),
            value: showWeekView,
            onChanged: (bool value) {
              setState(() {
                showWeekView = value;
              });
            },
          ),

          // Calendario en GridView (ya sea una semana o todo el mes)
          Container(
            height: 300, // Establecer altura fija para el GridView
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7, // 7 columnas (días de la semana)
                childAspectRatio: 1.0,
              ),
              itemCount: daysToDisplay.length,
              itemBuilder: (context, index) {
                DateTime currentDay = daysToDisplay[index];
                bool hasCitas = dayCitas.containsKey(currentDay) && dayCitas[currentDay]!.isNotEmpty;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDayForDetails = currentDay;
                      selectedDate = selectedDayForDetails!;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _colorContainer(currentDay, hasCitas),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${currentDay.day}',
                          style: TextStyle(
                            fontSize: 18,
                            color: hasCitas ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Mostrar horas disponibles y citas en el panel principal
          if (selectedDayForDetails != null)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Mostrar horas disponibles
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: availableTimes.map((time) {
                        bool isTaken = isTimeTaken(selectedDayForDetails!, time); // Verifica si la hora ya está ocupada
                        return GestureDetector(
                          onTap: () {
                            if (isTaken) {
                              // Si la hora está ocupada, abrir el cuadro de diálogo para editar o eliminar
                              var cita = dayCitas[selectedDayForDetails]!.firstWhere((cita) => cita['time'] == time);
                              _showEditCitaDialog(selectedDayForDetails!, cita);
                            } else {
                              // Si la hora está disponible, abrir el cuadro de diálogo para agregar una cita
                              _showCitaDialog(selectedDayForDetails!, time);
                            }
                          },
                          child: Chip(
                            label: Text(time),
                            backgroundColor: isTaken ? Colors.grey : Colors.green, // Color según disponibilidad
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 10), // Espacio entre horas disponibles y citas
                    // Mostrar citas con SingleChildScrollView en Expanded
                    if (getCitasForSelectedDay(selectedDayForDetails!).isNotEmpty)
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: getCitasForSelectedDay(selectedDayForDetails!).map((cita) {
                              return ListTile(
                                title: Text(cita['time']),
                                subtitle: Text(cita['comment']),
                                trailing: IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    _showEditCitaDialog(selectedDayForDetails!, cita);
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color _colorContainer(DateTime date, bool hasClient) {
    // Determinamos si la fecha es hoy
    bool isToday = date.year == DateTime.now().year &&
                   date.month == DateTime.now().month &&
                   date.day == DateTime.now().day;

    // Devolver el color según el caso
    return isToday ? Colors.teal : (hasClient ? Colors.blue : Colors.transparent);
  }
}
