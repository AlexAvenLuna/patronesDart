import 'generador-reportes.dart';

void main() {
  final generador = GeneradorReportes();
  generador.generarReporte('json', [9, 8, 9, 10, 0, 0, 0, 0]);
  generador.generarReporte('texto', [9, 8, 9, 10, 0, 0, 0, 0]);
  generador.generarReporte('excel', [9, 8, 9, 10, 0, 0, 0, 0]);
}
