import 'package:actuacion/model/Backend.dart';
import 'package:actuacion/model/Email.dart';
import 'package:actuacion/screen/DetailsScreen.dart';
import 'package:actuacion/widget/Email.dart';
import 'package:flutter/material.dart';

class lista extends StatefulWidget {
  const lista({super.key});

  @override
  State<lista> createState() => _listaState();
}

class _listaState extends State<lista> {


void tocar(Email emails) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return detallesCorreos(emails: emails);
    }));

    Backend().markEmailAsRead(emails.id);
    setState(() {
    });
  }


void marcar (int id){
Backend().markEmailAsRead(id);
}


void eliminar(int id){
Backend().deleteEmail(id);
}




  @override
  Widget build(BuildContext context) {
    return ListView(
       children: Backend().getEmails().map((email) => mensajerecibido(
              email: email, 
              tocar: tocar,
              eliminar: eliminar,
              marcar: marcar
              ))
            .toList(),
    );
  }
}