import 'package:flutter/material.dart';
import 'package:actuacion/screen/ListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listado de correos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Cambia el color principal a tu elección
        ),
   
        useMaterial3: true,
      ),
      home: const lista(),
    );
  }
}


