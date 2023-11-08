import 'package:actuacion/model/Email.dart';
import 'package:flutter/material.dart';

class detallesCorreos extends StatefulWidget {

  final Email emails;

  const detallesCorreos({super.key, required this.emails});

  @override
  State<detallesCorreos> createState() => _detallesCorreosState();
}

class _detallesCorreosState extends State<detallesCorreos> {
  Color _backgroundColor = Colors.white10;



  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(widget.emails.titulo),
      ),
     body: Container(
      child: GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: _backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text('From: ' + widget.emails.contacto, style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text(widget.emails.titulo, style: TextStyle(fontSize: 14)),
                Text(widget.emails.fecha.toString(), style: TextStyle(fontSize: 14)),  
                Text(widget.emails.mensaje, style: TextStyle(fontSize: 14)),   
          ],
             
        )
     ),

    
      ),
    )
    );
    
  }
}