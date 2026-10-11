// CON el patron Adapter
// El cliente solo conoce ProcesadorPago. Agregar una pasarela nueva
// solo requiere crear un adaptador nuevo, sin tocar este codigo.

import 'adaptador-paypal.dart';
import 'adaptador-stripe.dart';
import 'pasarela-paypal.dart';
import 'pasarela-stripe.dart';
import 'procesador-pago.dart';

void main() {
  final procesadores = <ProcesadorPago>[
    AdaptadorPaypal(PasarelaPaypal()),
    AdaptadorStripe(PasarelaStripe()),
  ];

  for (final procesador in procesadores) {
    procesador.pagar(250.75);
  }
}
