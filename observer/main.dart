import 'agenda.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();

  agenda.suscribir(panel);
  agenda.suscribir(notificador);

  agenda.publicarTarea('Estudiar patrones de diseño');

  // En algun momento, el usuario desactiva las notificaciones
  agenda.desuscribir(notificador);

  agenda.publicarTarea('plantear ejercicion de Facade');
}
