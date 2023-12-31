import 'package:flutter/material.dart';
class AboutUs extends StatelessWidget {
// Datos de ambos
final String names = 'Gilmar Calderon\nJosue garcia'; // Nombres de ambos
final String emails =
'gilmar.calderon22@itca.edu.sv\njosue.garcia22@itca.edu.sv'; // Correosde ambos
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Acerca de nosotros'),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
// Imagen con ambas fotos
Image.asset(
'images/equipo.jpg', // Ruta de la imagen combinada
width: 150.0,
height: 150.0,
),
SizedBox(height: 20.0),
Text(
names,
textAlign: TextAlign.center,
style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
),
SizedBox(height: 10.0),
Text(
emails,
textAlign: TextAlign.center,
style: TextStyle(fontSize: 18.0),
),
],
),
),
);
}
}