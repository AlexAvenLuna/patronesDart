// Clase que implemeta una interfaz

import 'figura-geometrica.dart';

// Solo para trinagulo equilatero
class Triangulo implements FiguraGeometrica {
  double? perimetro;
  double? area;
  double basetriangulo;
  double altura;

  Triangulo(this.basetriangulo, this.altura);

  void obtenerPerimetro() {
    perimetro = basetriangulo * 3;
  }

  void obtenerArea() {
    area = basetriangulo * altura / 2;
  }
}
