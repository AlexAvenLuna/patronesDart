// Agenda sin observer

import 'notificador.dart';
import 'panel-alumno.dart';

class Agenda {
  final PanelAlumno panelAlumno = PanelAlumno();
  final Notificador notificador = Notificador();

  void agregarTarea(String tarea) {
    print('Publicando: $tarea');
    panelAlumno.mostrar(tarea);
    notificador.notificar(tarea);
  }

  //sin observer la agenda termmina de encargarse
  //de todo:
  //publicar tareas, coordinar componentes de otro tipo, etc
}
