import 'documento.dart';

class DocumentoExcel implements Documento {
  @override
  String generar(List<int> calificaciones) {
    return 'calificaciones: ${calificaciones.join(', ')}, en formato de excel';
  }
}
