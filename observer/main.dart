import 'agenda.dart';
import 'historial.dart';
import 'notificador.dart';
import 'panel-alumno.dart';

void main() {
  final agenda = Agenda();
  final PanelAlumno panel = PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  agenda.publicarTarea('Estudiar patrones de diseño');

  // En algun momento, el usuario desactiva las notificaciones
  agenda.desuscribir(notificador);

  agenda.publicarTarea('plantear ejercicion de Facade');
}
