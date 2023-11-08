import 'package:actuacion/model/Email.dart';


class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 1,
      contacto: 'guso@hotmal.com',
      titulo: 'Menu actualizado para los enamorados',
      mensaje: 'Trae el sabado a tu pareja al comedor y desgunten de una sazon inigualable',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 2,
      contacto: 'murga@hotmal.com',
      titulo: 'Tarea atrasada',
      mensaje: 'Le esperamos mañana en la murga te daran trabajo',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
  Email(
      id: 3,
      contacto: 'linked@hotmal.com',
      titulo: 'oferta de empleo',
      mensaje: 'Le esperamos mañana en la murga te daran trabajo',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 4,
      contacto: 'reels@hotmal.com',
      titulo: 'Nuevos videos',
      mensaje: 'Que esperas para ver los nuevos videos subidos, entra ya !!!',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 5,
      contacto: 'barber@hotmal.com',
      titulo: 'Cortate el pelo',
      mensaje: 'Tenemos promociones para ti y tus panas, asi que vengan y cortensen el pelo',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 6,
      contacto: 'ozuna@hotmal.com',
      titulo: 'Ven a mi concierto',
      mensaje: 'Te espero despues de la murga en la playa para que disfrutes de mi repertorio',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 7,
      contacto: 'uleam@hotmal.com',
      titulo: 'No hay clases mañana',
      mensaje: 'Mañana se suspenden las clases por motivos de la murga universitaria',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
    Email(
      id: 8,
      contacto: 'elvenado@hotmal.com',
      titulo: 'carnes asadas a mitad de precio',
      mensaje: 'Ven y conoce nuestras ofertas bebe',
      fecha: DateTime(2023, 10, 11, 16, 14),
    ),
     
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((llamada) => llamada.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((llamada) => llamada.id == id);
  }
}
