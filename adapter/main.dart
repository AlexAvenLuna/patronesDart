// SIN el patron Adapter
// El cliente conoce los detalles de cada pasarela: sus metodos,
// sus tipos de dato y como convertir el monto.

import 'pasarela-paypal.dart';
import 'pasarela-stripe.dart';

// Cada pasarela nueva obliga a modificar esta funcion
void cobrar(Object pasarela, double monto) {
  if (pasarela is PasarelaPaypal) {
    pasarela.enviarPagoEnDolares(monto);
  } else if (pasarela is PasarelaStripe) {
    final centavos = (monto * 100).round();
    pasarela.crearCargo(centavos);
  } else {
    throw ArgumentError('Pasarela no soportada');
  }
}

void main() {
  final pasarelas = <Object>[PasarelaPaypal(), PasarelaStripe()];

  for (final pasarela in pasarelas) {
    cobrar(pasarela, 250.75);
  }
}
