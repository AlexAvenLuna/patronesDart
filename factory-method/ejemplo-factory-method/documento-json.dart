import 'dart:convert';

import 'documento.dart';

class DocumentoJson implements Documento {
  @override
  String generar(List<int> calificaciones) {
    //
    return jsonEncode({'calificaciones': calificaciones});
  }
}
