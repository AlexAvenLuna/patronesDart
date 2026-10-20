import 'observador.dart';

// Observador

class PanelAlumno implements Observador {
  @override
  void actualizar(String tarea) {
    print('PanelAlumno: nueva tarea $tarea');
  }
}
