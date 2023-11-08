class Email{
  final int id;
  final String contacto;
  final String titulo;
  final String mensaje;
  final DateTime fecha;
  bool read;

  Email({
    required this.id,
    required this.contacto,
    required this.titulo,
    required this.mensaje,
    required this.fecha,
    this.read = false,
  });






}