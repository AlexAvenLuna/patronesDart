import 'documento.dart';

class DocumentoTexto implements Documento {
  @override
  String generar(List<int> calificaciones) {
    return 'calificaciones: ${calificaciones.join(', ')}, en formato de word';
  }
}
