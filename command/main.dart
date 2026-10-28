import 'agenda.dart';
import 'controlador-comandos.dart';
import 'eliminar-tarea.dart';

void main() {
  final tareas = [
    "Estudiar dart",
    "Hacer mis HUs",
    "Preguntarle a chat como hacer un merge",
    "Decirle a chat que haga mi tarea de ingles",
    "Hacer UI de la app movil",
  ];

  final controlador = ControladorComandos();

  print('Las tareas pendientes son: $tareas');

  controlador.ejecutar(EliminarTarea(tareas, 1));

  print("Lista de tareas despues de eliminar: $tareas");

  controlador.ejecutar(EliminarTarea(tareas, 0));

  print("Lista de tareas despues de eliminar: $tareas");

  // Deshacer la eliminacion
  controlador.deshacer();
  print("Lista de tareas despues del primer deshacer: $tareas");

  controlador.deshacer();
  print("Lista de tareas despues del segundo deshacer: $tareas");

  // Cada comando conserva su propia eliminacion
  // Cada comando conoce como ejecutar y revertir la accion
  // Ahora se pueden agregar mas comandos a la agenda
}
