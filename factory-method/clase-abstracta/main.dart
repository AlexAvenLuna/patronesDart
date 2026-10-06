// import 'figura_geometrica.dart';

import 'triangulo.dart';

void main() {
  // Nose puede instanciar de una clase abstracta o interfaz
  // FiguraGeometrica unaFigura = FiguraGeometrica();

  Triangulo unTriangulo = Triangulo(15.8, 27.3);

  unTriangulo.obtenerArea();
  print('Area del Triangulo: ${unTriangulo.area}');
  unTriangulo.obtenerPerimetro();
  print('Perimetro del Triangulo: ${unTriangulo.perimetro}');
}
