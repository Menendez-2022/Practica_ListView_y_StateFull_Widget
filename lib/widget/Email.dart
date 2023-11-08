import 'package:actuacion/model/Email.dart';
import 'package:flutter/material.dart';

class mensajerecibido extends StatefulWidget {
  final Email email;
  final Function tocar;
  final Function marcar;
  final Function eliminar;

  const mensajerecibido({
    Key? key,
    required this.email,
    required this.tocar,
    required this.marcar,
    required this.eliminar,
  }) : super(key: key);

  @override
  State<mensajerecibido> createState() => _mensajecibidoState();
}
class _mensajecibidoState extends State<mensajerecibido> {
  Color _backgroundColor = Colors.white;

  bool showCheckIcon = false;
  bool showPresion = false;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.email.id.toString()),
      direction: DismissDirection.horizontal,
      onDismissed: (direction) {
        widget.eliminar(widget.email.id);
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            showCheckIcon = true;
            showPresion = false;
          });
          widget.tocar(widget.email);
        },
        onLongPress: () {
          setState(() {
            showPresion = true;
          });
          widget.marcar(widget.email.id);
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: _backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.email.fecha.toString(),
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  Text(
                    widget.email.contacto,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.email.titulo,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black, 
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              if (showCheckIcon)
                Icon(
                  Icons.check,
                  color: Color.fromARGB(255, 76, 175, 111),
                  size: 24,
                ),
             if(showPresion)
             Text(
                    'Mensaje presionado',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}