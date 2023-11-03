import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agendar citas',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController pacienteController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController motivoController = TextEditingController();
  
  final TextEditingController horaController = TextEditingController();
  final TextEditingController atiendeController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        diaController.text = dateFormat.format(selectedDate);
      });
    }
  }

  final TextEditingController diaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar cita'), 
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: pacienteController,
              decoration: InputDecoration(labelText: 'Paciente:'),
            ),
            TextFormField(
              controller: areaController,
              decoration: InputDecoration(labelText: 'Área:'),
            ),
            TextFormField(
              controller: motivoController,
              decoration: InputDecoration(labelText: 'Motivo:'),
            ),
            TextFormField(
              controller: diaController,
              decoration: InputDecoration(
                labelText: 'Día: SELECCIONA EL ICONO PARA AGREGAR EL DIA',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ),
            ),
            TextFormField(
              controller: horaController,
              decoration: InputDecoration(labelText: 'Hora:'),
            ),
            TextFormField(
              controller: atiendeController,
              decoration: InputDecoration(labelText: 'Atiende:'),
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                // Guarda la lógica de los datos ingresados
                String paciente = pacienteController.text;
                String area = areaController.text;
                String motivo = motivoController.text;
                String dia = diaController.text;
                String hora = horaController.text;
                String atiende = atiendeController.text;
                // Guarda los datos o realiza acciones con ellos.
              },
              child: Text('Agendar'),
            ),
          ],
        ),
      ),
    );
  }
}
